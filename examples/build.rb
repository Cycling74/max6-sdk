#!/usr/bin/env ruby -wKU
# encoding: utf-8

# Build all Max SDK examples
# Run from Terminal.app (Mac) or "Developer Command Prompt for VS2012" (Windows) 
# by cd'ing into the examples directory, and then running:
#   ruby build.rb
#
# On Windows you will need to have installed Ruby (1.9.3 recommended) from http://rubyinstaller.org/

sdk_examples_dir = "."
Dir.chdir sdk_examples_dir
sdk_examples_dir = Dir.pwd


# determine what platform we are on

$mac = (Object::RUBY_PLATFORM =~ /darwin/i) ? true : false
$win = !$mac
$vs2012 = false

# if we are on windows, figure out if we have VisualStudio 2012
# if not, we will try to fall back on VisualStudio 2010

if $win
  begin
    require 'win32/registry'

    Win32::Registry::HKEY_LOCAL_MACHINE.open('Software\\Microsoft\\VisualStudio\\11.0') do |reg|
      $vs2012 = true
    end
  rescue
    puts "Couldn't find VisualStudio 2012 in the registry, assuming VS2010"
  end
end


# method to recursively build the projects

def build_projects_for_dir(path)
  puts
  puts "Building Projects for Directory: #{path}"
  
  Dir.foreach path do |filename|

    if $mac && filename.match(/.*\.xcodeproj/)
      puts "  Building #{filename}" 
      result = `cd #{path}; xcodebuild -project #{filename} 2>&1`
      if result.match(/\*\* BUILD SUCCEEDED \*\*/)
        puts "    (success)"
      else
        puts "    (FAIL) ************************************"
        #puts result
      end

    elsif $win && filename.match(/.*\.vcxproj/) && !filename.match(/.*\.vcxproj\..*/)
      toolset = ""
      toolset = "/p:PlatformToolset=v110" if $vs2012

      puts "  Building #{filename} for Win32"
      result = `msbuild.exe /target:rebuild /p:Platform=Win32 #{toolset} #{path}/#{filename} 2>&1`
      if result.match(/(0 error|up\-to\-date|Build succeeded\.)/)
        puts "    (success)"
      else
        puts "    (FAIL) ************************************"
        #puts result
      end

      puts "  Building #{filename} for x64"
      result = `msbuild.exe /target:rebuild /p:Platform=x64 #{toolset} #{path}/#{filename} 2>&1`
      if result.match(/(0 error|up\-to\-date|Build succeeded\.)/)
        puts "    (success)"
      else
        puts "    (FAIL) ************************************"
        #puts result
      end

    elsif File.directory?("#{path}/#{filename}") && filename != "." && filename != ".." && filename != "build" && filename != "sysbuild" && !filename.match(/.*\.xcodeproj/)
      build_projects_for_dir("#{path}/#{filename}")
    end
  end
  
  puts
end


build_projects_for_dir(sdk_examples_dir)

