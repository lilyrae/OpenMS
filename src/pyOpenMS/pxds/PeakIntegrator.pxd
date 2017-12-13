from DefaultParamHandler cimport *
from String cimport *
from MSChromatogram cimport *
from MSSpectrum cimport *
from Types cimport *
from String cimport *

cdef extern from "<OpenMS/ANALYSIS/OPENSWATH/PeakIntegrator.h>" namespace "OpenMS":

    cdef cppclass PeakIntegrator(DefaultParamHandler):
        # wrap-inherits:
        #  DefaultParamHandler

        PeakIntegrator() nogil except +
        PeakIntegrator(PeakIntegrator) nogil except +

        void getDefaultParameters(Param) nogil except +

        void estimateBackground(MSChromatogram, double, double) nogil except +
        void estimateBackground(MSSpectrum, double, double) nogil except +

        void integratePeak(MSChromatogram, double, double) nogil except +
        void integratePeak(MSSpectrum, double, double) nogil except +

        void calculatePeakShapeMetrics(MSChromatogram, double, double) nogil except +
        void calculatePeakShapeMetrics(MSSpectrum, double, double) nogil except +

        double getPeakArea() nogil except +
        double getPeakHeight() nogil except +
        double getPeakApexPos() nogil except +
        double getBackgroundHeight() nogil except +
        double getBackgroundArea() nogil except +

        getPeakShapeMetrics() nogil except +

cdef extern from "<OpenMS/ANALYSIS/OPENSWATH/PeakIntegrator.h>" namespace "OpenMS::PeakIntegrator":

    cdef cppclass PeakShapeMetrics:

        double width_at_5
        double width_at_10
        double width_at_50
        double start_time_at_5
        double start_time_at_10
        double start_time_at_50
        double end_time_at_5
        double end_time_at_10
        double end_time_at_50
        double total_width
        double tailing_factor
        double asymmetry_factor
        double slope_of_baseline
        double baseline_delta_2_height
        Int points_across_baseline
        Int points_across_half_height
