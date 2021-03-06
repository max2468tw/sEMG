### Principal Component Analysis Applied to Surface Electromyography: A Comprehensive Review

#### Brief introduction of PCA and sEMG signal. Many examples of PCA usage on sEMG

#### 7/10

### Keypoints
* Factor analysis 
    * principal component analysis (PCA), independent component analysis (ICA), singular value decomposition (SVD), and non-negative matrix factorization (NMF) 


* Motor Unit
    * **A muscle consists of a large number of muscle fibers, which are grouped into several motor units (MUs).** An MU is regarded as the basic level of the neuro motor system of a muscle. All the muscle fibers that belong to an MU are controlled by a single motor neuron as shown in Fig. 1

* Signal
    * **A motor neuron stimulates the muscle fibers by sending out the nerve action potential,** which travels along the axon towards the muscle fibers. Notwithstanding the fact that the same action potential triggers a set of muscle fibers, their stimulation varies in time, since the **axon branch to individual muscle fibers differs in length. This time difference between the activation of muscle fibers is known as jitter.** 
    * ...the body tissues jointly act as an imperfect insulator with low- pass filter characteristics, and therefore tend to attenuate the high frequency components of the acquired signal 
    * ...the amplitude of the sEMG signal turns out to be pseudo-random, and its probability distribution function resembles a Gaussian function [15], [39], [40].
    * An important sEMG processing is the extraction of multiple muscle activities called *synergy features* that would reveal coordination patterns in the myoelectric signals. These features are proven useful when dealing with multiple DoF as they could explain the coordination among various muscles.
    

* Force
    * As exemplified in [15] and [40], the amplitude and spectral information of sEMG provide cues to esti- mate the muscle force and muscle voluntary contractions.
    * The manner in which the MUs are selected to participate in a muscle contraction is called the recruitment process, and it relies on the **‘‘size principle’’**. This means that for a small degree of contraction, the MUs composed of a small number of muscle fibers are engaged; alternatively, larger levels of contraction necessitates the involvement of MUs compris- ing ample number of muscle fibers.

* Fatigue
    *  In a contraction that generates a constant force, namely, the isotonic contraction, the activation pattern switches from one MU to another so that the MU can evade from growing fatigue [37], [38].

* PCA
    *  PCA has been employed to determine the most important factors that contribute to the sources of variation in movement patterns [5], [25].
    *  The PCs accounting for a large amount of total variance are presumably related to the control signal outputs of spinal pattern generators, which trigger the corresponding muscles to generate move- ment under the influence of commands that are sent to the MUs through the descending pathway [46]. 
    *  the components that explain only a small amount of the total variance are generally deemed as random noise within the system [42]. 
    *   Many studies have successfully demonstrated that the application of PCA to kinematic, kinetic or sEMG data can unveil the underlying coordinative structures in the correlated patterns of variation among joints or body segments [47], [48].

* PCA implementation
    * retain the PCs with the eigenvalues greater than one; however, as cautioned in [54], this naive strategy may lead to loss of valuable information.
    * Traditionally, one can plot the eigenvalues in decreasing order, and the resulting plot known as the scree-plot may be visually inspected to track the elbow point, where the slope of the scree-plot undergoes an abrupt transition. 
    * Another popular method is to retain the smallest number of components that capture an appreciable percentage γ of the total variance; in practice, γ is determined to be 80% or 90%.
    * 

* PCA+
    *  a few other sEMG decomposition techniques have been deemed more suitable than the PCA as argued in [51] 
    *  By treating the sEMG signals as complex convolutive mixtures, the deconvolution has been achieved with partial success with wavelets, neural network classifiers, and the time-frequency decomposition. 

### Word, AKA vocabulary

### General, misc

### Spinoff, interesting referenced papers
