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
            $0.it("has correct fileType") {
                try expect(FileType.defaultFileTypes["bundle"]) == FileType(buildPhase: .resources)
                try expect(FileType.defaultFileTypes["swift"]) == FileType(buildPhase: .sources)
                try expect(FileType.defaultFileTypes["h"])  == FileType(buildPhase: .headers)
                try expect(FileType.defaultFileTypes["framework"])  == FileType(buildPhase: .frameworks)
                try expect(FileType.defaultFileTypes["xpc"]) == FileType(buildPhase: .copyFiles(.xpcServices))
                try expect(FileType.defaultFileTypes["xcconfig"])  == FileType(buildPhase: BuildPhaseSpec.none)
                
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


