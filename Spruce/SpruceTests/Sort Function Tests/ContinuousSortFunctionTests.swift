//
//  ContinuousSortFunctionTests.swift
//  Spruce
//
//  Copyright (c) 2017 WillowTree, Inc.

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//


import XCTest

class ContinuousSortFunctionTests: SortFunctionTests {
    
    func testContinuousSortFunction(withStartPosition position: SprucePosition, expected: [TimeInterval], expectedReversed: [TimeInterval]) {
        let sortFunction = ContinuousSortFunction(position: position, duration: 0.1)
        let timedViews = sortFunction.getTimeOffsets(view: animatableView)
        
        compare(timedViews: timedViews, toExpected: expected)
        
        sortFunction.reversed = true
        let timedViewsReversed = sortFunction.getTimeOffsets(view: animatableView)
        compare(timedViews: timedViewsReversed, toExpected: expectedReversed)
        
        printTimedViews(timedViews)
        printTimedViews(timedViewsReversed)
    }
    
    func testTopLeftContinousSortFunction() {
        let expected = [0.0,0.0176776695296637,0.0353553390593274,0.0530330085889911,0.0707106781186548,
                        0.0176776695296637,0.025,0.0395284707521047,0.0559016994374947,0.0728868986855663,
                        0.0353553390593274,0.0395284707521047,0.05,0.0637377439199098,0.0790569415042095,
                        0.0530330085889911,0.0559016994374947,0.0637377439199098,0.075,0.0883883476483184,
                        0.0707106781186548,0.0728868986855663,0.0790569415042095,0.0883883476483184,0.1]
        let expectedReversed = [0.1,0.0823223304703363,0.0646446609406726,0.0469669914110089,0.0292893218813453,
                                0.0823223304703363,0.075,0.0604715292478953,0.0440983005625053,0.0271131013144337,
                                0.0646446609406726,0.0604715292478953,0.05,0.0362622560800902,0.0209430584957905,
                                0.0469669914110089,0.0440983005625053,0.0362622560800902,0.025,0.0116116523516816,
                                0.0292893218813453,0.0271131013144337,0.0209430584957905,0.0116116523516816,0.0]
        testContinuousSortFunction(withStartPosition: .topLeft, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testTopMiddleContinousSortFunction() {
        let expected = [0.0447213595499958,0.0223606797749979,0.0,0.0223606797749979,0.0447213595499958,
                        0.05,0.0316227766016838,0.0223606797749979,0.0316227766016838,0.05,
                        0.0632455532033676,0.05,0.0447213595499958,0.05,0.0632455532033676,
                        0.0806225774829855,0.0707106781186548,0.0670820393249937,0.0707106781186548,0.0806225774829855,
                        0.1,0.0921954445729289,0.0894427190999916,0.0921954445729289,0.1]
        let expectedReversed = [0.0552786404500042,0.0776393202250021,0.1,0.0776393202250021,0.0552786404500042,
                                0.05,0.0683772233983162,0.0776393202250021,0.0683772233983162,0.05,
                                0.0367544467966324,0.05,0.0552786404500042,0.05,0.0367544467966324,
                                0.0193774225170145,0.0292893218813452,0.0329179606750063,0.0292893218813452,0.0193774225170145,
                                0.0,0.00780455542707112,0.0105572809000084,0.00780455542707112,0.0]
        testContinuousSortFunction(withStartPosition: .topMiddle, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testTopRightContinousSortFunction() {
        let expected = [0.0707106781186548,0.0530330085889911,0.0353553390593274,0.0176776695296637,0.0,
                        0.0728868986855663,0.0559016994374947,0.0395284707521047,0.025,0.0176776695296637,
                        0.0790569415042095,0.0637377439199098,0.05,0.0395284707521047,0.0353553390593274,
                        0.0883883476483184,0.075,0.0637377439199098,0.0559016994374947,0.0530330085889911,
                        0.1,0.0883883476483184,0.0790569415042095,0.0728868986855663,0.0707106781186548]
        let expectedReversed = [0.0292893218813453,0.0469669914110089,0.0646446609406726,0.0823223304703363,0.1,
                                0.0271131013144337,0.0440983005625053,0.0604715292478953,0.075,0.0823223304703363,
                                0.0209430584957905,0.0362622560800902,0.05,0.0604715292478953,0.0646446609406726,
                                0.0116116523516816,0.025,0.0362622560800902,0.0440983005625053,0.0469669914110089,
                                0.0,0.0116116523516816,0.0209430584957905,0.0271131013144337,0.0292893218813453]
        testContinuousSortFunction(withStartPosition: .topRight, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testLeftContinousSortFunction() {
        let expected = [0.0447213595499958,0.05,0.0632455532033676,0.0806225774829855,0.1,
                        0.0223606797749979,0.0316227766016838,0.05,0.0707106781186548,0.0921954445729289,
                        0.0,0.0223606797749979,0.0447213595499958,0.0670820393249937,0.0894427190999916,
                        0.0223606797749979,0.0316227766016838,0.05,0.0707106781186548,0.0921954445729289,
                        0.0447213595499958,0.05,0.0632455532033676,0.0806225774829855,0.1]
        let expectedReversed = [0.0552786404500042,0.05,0.0367544467966324,0.0193774225170145,0.0,
                                0.0776393202250021,0.0683772233983162,0.05,0.0292893218813452,0.00780455542707112,
                                0.1,0.0776393202250021,0.0552786404500042,0.0329179606750063,0.0105572809000084,
                                0.0776393202250021,0.0683772233983162,0.05,0.0292893218813452,0.00780455542707112,
                                0.0552786404500042,0.05,0.0367544467966324,0.0193774225170145,0.0]
        testContinuousSortFunction(withStartPosition: .left, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testMiddleContinousSortFunction() {
        let expected = [0.1,0.0790569415042095,0.0707106781186548,0.0790569415042095,0.1,
                        0.0790569415042095,0.05,0.0353553390593274,0.05,0.0790569415042095,
                        0.0707106781186548,0.0353553390593274,0.0,0.0353553390593274,0.0707106781186548,
                        0.0790569415042095,0.05,0.0353553390593274,0.05,0.0790569415042095,
                        0.1,0.0790569415042095,0.0707106781186548,0.0790569415042095,0.1]
        let expectedReversed = [0.0,0.0209430584957905,0.0292893218813453,0.0209430584957905,0.0,
                                0.0209430584957905,0.05,0.0646446609406726,0.05,0.0209430584957905,
                                0.0292893218813453,0.0646446609406726,0.1,0.0646446609406726,0.0292893218813453,
                                0.0209430584957905,0.05,0.0646446609406726,0.05,0.0209430584957905,
                                0.0,0.0209430584957905,0.0292893218813453,0.0209430584957905,0.0]
        testContinuousSortFunction(withStartPosition: .middle, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testRightContinousSortFunction() {
        let expected = [0.1,0.0806225774829855,0.0632455532033676,0.05,0.0447213595499958,
                        0.0921954445729289,0.0707106781186548,0.05,0.0316227766016838,0.0223606797749979,
                        0.0894427190999916,0.0670820393249937,0.0447213595499958,0.0223606797749979,0.0,
                        0.0921954445729289,0.0707106781186548,0.05,0.0316227766016838,0.0223606797749979,
                        0.1,0.0806225774829855,0.0632455532033676,0.05,0.0447213595499958]
        let expectedReversed = [0.0,0.0193774225170145,0.0367544467966324,0.05,0.0552786404500042,
                                0.00780455542707112,0.0292893218813452,0.05,0.0683772233983162,0.0776393202250021,
                                0.0105572809000084,0.0329179606750063,0.0552786404500042,0.0776393202250021,0.1,
                                0.00780455542707112,0.0292893218813452,0.05,0.0683772233983162,0.0776393202250021,
                                0.0,0.0193774225170145,0.0367544467966324,0.05,0.0552786404500042]
        testContinuousSortFunction(withStartPosition: .right, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testBottomLeftContinousSortFunction() {
        let expected = [0.0707106781186548,0.0728868986855663,0.0790569415042095,0.0883883476483184,0.1,
                        0.0530330085889911,0.0559016994374947,0.0637377439199098,0.075,0.0883883476483184,
                        0.0353553390593274,0.0395284707521047,0.05,0.0637377439199098,0.0790569415042095,
                        0.0176776695296637,0.025,0.0395284707521047,0.0559016994374947,0.0728868986855663,
                        0.0,0.0176776695296637,0.0353553390593274,0.0530330085889911,0.0707106781186548]
        let expectedReversed = [0.0292893218813453,0.0271131013144337,0.0209430584957905,0.0116116523516816,0.0,
                                0.0469669914110089,0.0440983005625053,0.0362622560800902,0.025,0.0116116523516816,
                                0.0646446609406726,0.0604715292478953,0.05,0.0362622560800902,0.0209430584957905,
                                0.0823223304703363,0.075,0.0604715292478953,0.0440983005625053,0.0271131013144337,
                                0.1,0.0823223304703363,0.0646446609406726,0.0469669914110089,0.0292893218813453]
        testContinuousSortFunction(withStartPosition: .bottomLeft, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testBottomMiddleContinousSortFunction() {
        let expected = [0.1,0.0921954445729289,0.0894427190999916,0.0921954445729289,0.1,
                        0.0806225774829855,0.0707106781186548,0.0670820393249937,0.0707106781186548,0.0806225774829855,
                        0.0632455532033676,0.05,0.0447213595499958,0.05,0.0632455532033676,
                        0.05,0.0316227766016838,0.0223606797749979,0.0316227766016838,0.05,
                        0.0447213595499958,0.0223606797749979,0.0,0.0223606797749979,0.0447213595499958]
        let expectedReversed = [0.0,0.00780455542707112,0.0105572809000084,0.00780455542707112,0.0,
                                0.0193774225170145,0.0292893218813452,0.0329179606750063,0.0292893218813452,0.0193774225170145,
                                0.0367544467966324,0.05,0.0552786404500042,0.05,0.0367544467966324,
                                0.05,0.0683772233983162,0.0776393202250021,0.0683772233983162,0.05,
                                0.0552786404500042,0.0776393202250021,0.1,0.0776393202250021,0.0552786404500042]
        testContinuousSortFunction(withStartPosition: .bottomMiddle, expected: expected, expectedReversed: expectedReversed)
    }
    
    func testBottomRightContinousSortFunction() {
        let expected = [0.1,0.0883883476483184,0.0790569415042095,0.0728868986855663,0.0707106781186548,
                        0.0883883476483184,0.075,0.0637377439199098,0.0559016994374947,0.0530330085889911,
                        0.0790569415042095,0.0637377439199098,0.05,0.0395284707521047,0.0353553390593274,
                        0.0728868986855663,0.0559016994374947,0.0395284707521047,0.025,0.0176776695296637,
                        0.0707106781186548,0.0530330085889911,0.0353553390593274,0.0176776695296637,0.0]
        let expectedReversed = [0.0,0.0116116523516816,0.0209430584957905,0.0271131013144337,0.0292893218813453,
                                0.0116116523516816,0.025,0.0362622560800902,0.0440983005625053,0.0469669914110089,
                                0.0209430584957905,0.0362622560800902,0.05,0.0604715292478953,0.0646446609406726,
                                0.0271131013144337,0.0440983005625053,0.0604715292478953,0.075,0.0823223304703363,
                                0.0292893218813453,0.0469669914110089,0.0646446609406726,0.0823223304703363,0.1]
        testContinuousSortFunction(withStartPosition: .bottomRight, expected: expected, expectedReversed: expectedReversed)
    }
}
