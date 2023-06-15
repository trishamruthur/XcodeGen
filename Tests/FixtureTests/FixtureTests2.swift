//
//  FixtureTests2.swift
//  FixtureTests
//
//  Created by Trishan Amruthur on 6/15/23.
//

import Foundation
import PathKit
import ProjectSpec
import Spectre
import XcodeGenKit
import XcodeProj
import XCTest
import TestSupport

class FixtureTests2: XCTestCase {

    func testProjectFixture() {
        describe {
            $0.it("generates Test Project") {
                try generateXcodeProject(specPath: fixturePath + "TestProject/AnotherProject/project.yml")
                try generateXcodeProject(specPath: fixturePath + "TestProject/project.yml")
            }
            $0.it("generates Carthage Project") {
                try generateXcodeProject(specPath: fixturePath + "CarthageProject/project.yml")
            }
            $0.it("generates SPM Project") {
                try generateXcodeProject(specPath: fixturePath + "SPM/project.yml")
            }
        }
    }
}

private func generateXcodeProject(specPath: Path, file: String = #file, line: Int = #line) throws {
    let project = try Project(path: specPath)
    let generator = ProjectGenerator(project: project)
    let writer = FileWriter(project: project)
    let xcodeProject = try generator.generateXcodeProject()
    try writer.writeXcodeProject(xcodeProject)
    try writer.writePlists()
}
