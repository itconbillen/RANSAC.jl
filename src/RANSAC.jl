module RANSAC

using LinearAlgebra
using Random
using Logging
using Logging: default_logcolor
using StaticArrays: SVector
using RegionTrees
using AbstractPlotting: Point3f0
using Makie: scatter, linesegments!, Scene, scatter!
using Makie: mesh!, cam3d!, Sphere, Point
using GeometryTypes: Cylinder
using Images: label_components, component_lengths
using Parameters

import RegionTrees: AbstractRefinery, needs_refinement, refine_data

export  rodriguesdeg,
        rodriguesrad

export  arbitrary_orthogonal,
        isparallel,
        findAABB,
        unitdisk2square,
        smallestdistance,
        prob,
        havesameelement,
        RANSACParameters

export  ConfidenceInterval,
        notsoconfident,
        isoverlap,
        E

export  OctreeNode,
        iswithinrectangle,
        OctreeRefinery,
        PointCloud,
        getcellandparents,
        updatelevelweight

export  FittedShape,
        FittedPlane,
        FittedSphere,
        FittedCylinder,
        ShapeCandidate,
        findhighestscore,
        ScoredShape,
        largestshape,
        forcefitshapes

export  sampleplane,
        samplecylinder,
        samplesphere,
        normalsforplot,
        noisifyvertices,
        noisifynormals,
        makemeanexample,
        examplepc2,
        examplepc3,
        examplepc4,
        examplepc5,
        showgeometry

export  project2plane,
        #compatiblesPlane,
        #bitmapparameters,
        #compatiblesSphere,
        #compatiblesCylinder,
        #largestconncomp,
        refitsphere,
        refitplane,
        refitcylinder

export  ransac

export  nosource_debuglogger,
        nosource_infologger,
        sourced_debuglogger,
        sourced_infologger,
        nosource_metafmt

export  showgeometry,
        showcandlength,
        showshapes,
        getrest,
        showtype,
        showbytype,
        plotshape,
        plotshape!

include("utilities.jl")
include("confidenceintervals.jl")
include("octree.jl")
include("fitting.jl")
include("shapes/plane.jl")
include("shapes/sphere.jl")
include("shapes/cylinder.jl")
include("sampling.jl")
include("parameterspacebitmap.jl")
include("iterations.jl")
include("logging.jl")
include("visualizations.jl")

end #module
