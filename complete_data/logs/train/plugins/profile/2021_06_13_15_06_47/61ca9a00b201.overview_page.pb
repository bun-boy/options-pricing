?	gI-?:@gI-?:@!gI-?:@	?r???r??!?r??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLgI-?:@M?x$^J1@1??E????A???L0???I?r?4@YY??w???rEagerKernelExecute 0*	X9???b@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??<?;k??!?!?_>@)2Y?d:??1?j?Cj<:@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatep??^??!?V?P?=@)a?N"¿??1\?JpA?5@:Preprocessing2U
Iterator::Model::ParallelMapV2????E??!???f?,@)????E??1???f?,@:Preprocessing2F
Iterator::Model
J?ʽ???!??a???:@)*???;??1"?????(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?B˺,??!??WUER@)[A?+???1??B5?&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice:?!y??!?Xs??%@):?!y??1?Xs??%@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??ù?y?!?4?uˍ@)??ù?y?1?4?uˍ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???3.??!?|?]E?@)Vb????k?1c??\z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 66.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?26.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?r??I?2:j?SW@Q?=?h?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	M?x$^J1@M?x$^J1@!M?x$^J1@      ??!       "	??E??????E????!??E????*      ??!       2	???L0??????L0???!???L0???:	?r?4@?r?4@!?r?4@B      ??!       J	Y??w???Y??w???!Y??w???R      ??!       Z	Y??w???Y??w???!Y??w???b      ??!       JGPUY?r??b q?2:j?SW@y?=?h?@?"E
'gradient_tape/sequential/dense_4/MatMulMatMuly?4Q??!y?4Q??0"E
'gradient_tape/sequential/dense_1/MatMulMatMulg???*??!????=??0"E
'gradient_tape/sequential/dense_3/MatMulMatMul???9V%??!????N(??0"E
'gradient_tape/sequential/dense_2/MatMulMatMulE]????!????ҡ??0"7
sequential/dense_1/MatMulMatMulV]j?-??!???ҥV??0"7
sequential/dense_4/MatMulMatMulի?:???!70?"m'??0"7
sequential/dense_3/MatMulMatMul?3\#yx??!??G|???0"7
sequential/dense_2/MatMulMatMul?RR8p??!LNQ????0"K
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam???J???!?M?????"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdameDz?a??!_iŞ????Q      Y@YI?$I?$1@an۶m۶T@q???E?NU@yc??????"?
both?Your program is POTENTIALLY input-bound because 66.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?26.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?85.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Kepler)(: B 