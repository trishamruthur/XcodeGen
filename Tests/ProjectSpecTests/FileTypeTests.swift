import PathKit
import ProjectSpec
import Spectre
import XcodeProj
import XCTest
import TestSupport
import Version

class FileTypeTests: XCTestCase {
    
    func testFileType(){
        
        
        describe{
            let filetype1 = "bundle"
            let filetype2 = "swift"
            let filetype3 = "h"
            let filetype4 = "framework"
            let filetype5 = "xpc"
            let filetype6 = "xcconfig"
            
            $0.it("has correct sdkRoot") {
                try expect(FileType.defaultFileTypes[filetype1]) == FileType(buildPhase: .resources)
                try expect(FileType.defaultFileTypes[filetype2]) == FileType(buildPhase: .sources)
                try expect(FileType.defaultFileTypes[filetype3])  == FileType(buildPhase: .headers)
                try expect(FileType.defaultFileTypes[filetype4])  == FileType(buildPhase: .frameworks)
                try expect(FileType.defaultFileTypes[filetype5]) == FileType(buildPhase: .copyFiles(.xpcServices))
                try expect(FileType.defaultFileTypes[filetype6])  == FileType(buildPhase: BuildPhaseSpec.none)
                
            }
        }
    }
    func testSDKRoot(){
        
        
        describe{
            
            $0.it("has correct sdkRoot") {
                try expect(Platform.iOS.sdkRoot) == "iphoneos"
                try expect(Platform.tvOS.sdkRoot) == "appletvos"
                try expect(Platform.watchOS.sdkRoot) == "watchos"
                try expect(Platform.macOS.sdkRoot) == "macosx"
                
            }
        }
    }
    
}


