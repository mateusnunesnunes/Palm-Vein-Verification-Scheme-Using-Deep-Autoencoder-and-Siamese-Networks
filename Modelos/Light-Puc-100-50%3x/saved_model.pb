з
ц
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
7
Square
x"T
y"T"
Ttype:
2	
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628Ќй
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0

RMSprop/velocity/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*.
shared_nameRMSprop/velocity/dense_1/bias

1RMSprop/velocity/dense_1/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/bias*
_output_shapes
:2*
dtype0

RMSprop/velocity/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*0
shared_name!RMSprop/velocity/dense_1/kernel

3RMSprop/velocity/dense_1/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/kernel*
_output_shapes
:	2*
dtype0

RMSprop/velocity/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/velocity/dense/bias

/RMSprop/velocity/dense/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense/bias*
_output_shapes	
:*
dtype0

RMSprop/velocity/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ь*.
shared_nameRMSprop/velocity/dense/kernel

1RMSprop/velocity/dense/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense/kernel* 
_output_shapes
:
ь*
dtype0

RMSprop/velocity/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name RMSprop/velocity/conv2d_1/bias

2RMSprop/velocity/conv2d_1/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_1/bias*
_output_shapes
:*
dtype0
Є
 RMSprop/velocity/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" RMSprop/velocity/conv2d_1/kernel

4RMSprop/velocity/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/conv2d_1/kernel*&
_output_shapes
:*
dtype0

RMSprop/velocity/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/velocity/conv2d/bias

0RMSprop/velocity/conv2d/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d/bias*
_output_shapes
:*
dtype0
 
RMSprop/velocity/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name RMSprop/velocity/conv2d/kernel

2RMSprop/velocity/conv2d/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:2*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	2*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ь*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
ь*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0

serving_default_input_1Placeholder*/
_output_shapes
:џџџџџџџџџ<<*
dtype0*$
shape:џџџџџџџџџ<<

serving_default_input_2Placeholder*/
_output_shapes
:џџџџџџџџџ<<*
dtype0*$
shape:џџџџџџџџџ<<
г
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_381878

NoOpNoOp
вY
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Y
valueYBY BљX

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 

layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
layer-8
layer_with_weights-2
layer-9
layer-10
layer_with_weights-3
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
<
&0
'1
(2
)3
*4
+5
,6
-7*
<
&0
'1
(2
)3
*4
+5
,6
-7*
* 
А
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

3trace_0
4trace_1* 

5trace_0
6trace_1* 
* 

7
_variables
8_iterations
9_learning_rate
:_index_dict
;_velocities
<
_momentums
=_average_gradients
>_update_step_xla*

?serving_default* 
Ш
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

&kernel
'bias
 F_jit_compiled_convolution_op*

G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 

M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses* 
Ѕ
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator* 
Ш
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

(kernel
)bias
 `_jit_compiled_convolution_op*

a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 

g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 
Ѕ
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_random_generator* 

t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
І
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses

*kernel
+bias*
Ќ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
Ќ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

,kernel
-bias*
<
&0
'1
(2
)3
*4
+5
,6
-7*
<
&0
'1
(2
)3
*4
+5
,6
-7*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

0*
* 
* 
* 
* 
* 
* 
K
80
 1
Ё2
Ђ3
Ѓ4
Є5
Ѕ6
І7
Ї8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
 0
Ё1
Ђ2
Ѓ3
Є4
Ѕ5
І6
Ї7*
* 
* 
r
Јtrace_0
Љtrace_1
Њtrace_2
Ћtrace_3
Ќtrace_4
­trace_5
Ўtrace_6
Џtrace_7* 
* 

&0
'1*

&0
'1*
* 

Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
* 
* 
* 
* 

Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

Мtrace_0* 

Нtrace_0* 
* 
* 
* 

Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 
* 
* 
* 

Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

Ъtrace_0
Ыtrace_1* 

Ьtrace_0
Эtrace_1* 
* 

(0
)1*

(0
)1*
* 

Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
* 
* 
* 
* 

еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

кtrace_0* 

лtrace_0* 
* 
* 
* 

мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

сtrace_0* 

тtrace_0* 
* 
* 
* 

уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses* 

шtrace_0
щtrace_1* 

ъtrace_0
ыtrace_1* 
* 
* 
* 
* 

ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

ёtrace_0* 

ђtrace_0* 

*0
+1*

*0
+1*
* 

ѓnon_trainable_variables
єlayers
ѕmetrics
 іlayer_regularization_losses
їlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

јtrace_0* 

љtrace_0* 
* 
* 
* 

њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

џtrace_0
trace_1* 

trace_0
trace_1* 
* 

,0
-1*

,0
-1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
Z
0
1
2
3
4
5
6
7
8
9
10
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
ic
VARIABLE_VALUERMSprop/velocity/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUERMSprop/velocity/conv2d/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE RMSprop/velocity/conv2d_1/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUERMSprop/velocity/conv2d_1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUERMSprop/velocity/dense/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUERMSprop/velocity/dense/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUERMSprop/velocity/dense_1/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUERMSprop/velocity/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ъ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/bias RMSprop/velocity/conv2d_1/kernelRMSprop/velocity/conv2d_1/biasRMSprop/velocity/dense/kernelRMSprop/velocity/dense/biasRMSprop/velocity/dense_1/kernelRMSprop/velocity/dense_1/biastotalcountConst*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_382307
Х
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/bias RMSprop/velocity/conv2d_1/kernelRMSprop/velocity/conv2d_1/biasRMSprop/velocity/dense/kernelRMSprop/velocity/dense/biasRMSprop/velocity/dense_1/kernelRMSprop/velocity/dense_1/biastotalcount* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_382376ЃЦ
ш
е
$__inference_signature_wrapper_381878
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
ь
	unknown_4:	
	unknown_5:	2
	unknown_6:2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_381393o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ<<:џџџџџџџџџ<<: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_2:&"
 
_user_specified_name381860:&"
 
_user_specified_name381862:&"
 
_user_specified_name381864:&"
 
_user_specified_name381866:&"
 
_user_specified_name381868:&"
 
_user_specified_name381870:&"
 
_user_specified_name381872:&	"
 
_user_specified_name381874
Я

b
C__inference_dropout_layer_call_and_return_conditional_losses_381449

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
д

ѕ
A__inference_dense_layer_call_and_return_conditional_losses_382117

inputs2
matmul_readvariableop_resource:
ь.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ь*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџь: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџь
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_381520

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_382059

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Л
P
#__inference__update_step_xla_381913
gradient
variable:	2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	2: *
	_noinline(:I E

_output_shapes
:	2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ќ
K
#__inference__update_step_xla_381918
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
б

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_381484

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ь
d
H__inference_activation_1_layer_call_and_return_conditional_losses_381470

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш
I
-__inference_activation_1_layer_call_fn_382044

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_381470h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_381566

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч/

F__inference_sequential_layer_call_and_return_conditional_losses_381586
conv2d_input'
conv2d_381542:
conv2d_381544:)
conv2d_1_381555:
conv2d_1_381557: 
dense_381569:
ь
dense_381571:	!
dense_1_381580:	2
dense_1_381582:2
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallљ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_381542conv2d_381544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ::*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_381425ш
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ::* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_activation_layer_call_and_return_conditional_losses_381435ъ
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381398с
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_381553
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_381555conv2d_1_381557*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_381460ю
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_381470№
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_381408ч
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_381566ж
flatten/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџь* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_381491
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_381569dense_381571*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_381503о
dropout_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_381578
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_381580dense_1_381582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_381532w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ<<: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ<<
&
_user_specified_nameconv2d_input:&"
 
_user_specified_name381542:&"
 
_user_specified_name381544:&"
 
_user_specified_name381555:&"
 
_user_specified_name381557:&"
 
_user_specified_name381569:&"
 
_user_specified_name381571:&"
 
_user_specified_name381580:&"
 
_user_specified_name381582
ъ
b
F__inference_activation_layer_call_and_return_conditional_losses_381983

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ::b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ::"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:::W S
/
_output_shapes
:џџџџџџџџџ::
 
_user_specified_nameinputs
v
Ъ
!__inference__wrapped_model_381393
input_1
input_2P
6model_sequential_conv2d_conv2d_readvariableop_resource:E
7model_sequential_conv2d_biasadd_readvariableop_resource:R
8model_sequential_conv2d_1_conv2d_readvariableop_resource:G
9model_sequential_conv2d_1_biasadd_readvariableop_resource:I
5model_sequential_dense_matmul_readvariableop_resource:
ьE
6model_sequential_dense_biasadd_readvariableop_resource:	J
7model_sequential_dense_1_matmul_readvariableop_resource:	2F
8model_sequential_dense_1_biasadd_readvariableop_resource:2
identityЂ.model/sequential/conv2d/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d/BiasAdd_1/ReadVariableOpЂ-model/sequential/conv2d/Conv2D/ReadVariableOpЂ/model/sequential/conv2d/Conv2D_1/ReadVariableOpЂ0model/sequential/conv2d_1/BiasAdd/ReadVariableOpЂ2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOpЂ/model/sequential/conv2d_1/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_1/Conv2D_1/ReadVariableOpЂ-model/sequential/dense/BiasAdd/ReadVariableOpЂ/model/sequential/dense/BiasAdd_1/ReadVariableOpЂ,model/sequential/dense/MatMul/ReadVariableOpЂ.model/sequential/dense/MatMul_1/ReadVariableOpЂ/model/sequential/dense_1/BiasAdd/ReadVariableOpЂ1model/sequential/dense_1/BiasAdd_1/ReadVariableOpЂ.model/sequential/dense_1/MatMul/ReadVariableOpЂ0model/sequential/dense_1/MatMul_1/ReadVariableOpЌ
-model/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp6model_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
model/sequential/conv2d/Conv2DConv2Dinput_15model/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::*
paddingVALID*
strides
Ђ
.model/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp7model_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Х
model/sequential/conv2d/BiasAddBiasAdd'model/sequential/conv2d/Conv2D:output:06model/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::
 model/sequential/activation/ReluRelu(model/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ::Ю
&model/sequential/max_pooling2d/MaxPoolMaxPool.model/sequential/activation/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

!model/sequential/dropout/IdentityIdentity/model/sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџА
/model/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ђ
 model/sequential/conv2d_1/Conv2DConv2D*model/sequential/dropout/Identity:output:07model/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
І
0model/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
!model/sequential/conv2d_1/BiasAddBiasAdd)model/sequential/conv2d_1/Conv2D:output:08model/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
"model/sequential/activation_1/ReluRelu*model/sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџв
(model/sequential/max_pooling2d_1/MaxPoolMaxPool0model/sequential/activation_1/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

#model/sequential/dropout_1/IdentityIdentity1model/sequential/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџo
model/sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџь  Е
 model/sequential/flatten/ReshapeReshape,model/sequential/dropout_1/Identity:output:0'model/sequential/flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџьЄ
,model/sequential/dense/MatMul/ReadVariableOpReadVariableOp5model_sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
ь*
dtype0Л
model/sequential/dense/MatMulMatMul)model/sequential/flatten/Reshape:output:04model/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
-model/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0М
model/sequential/dense/BiasAddBiasAdd'model/sequential/dense/MatMul:product:05model/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
model/sequential/dense/ReluRelu'model/sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
#model/sequential/dropout_2/IdentityIdentity)model/sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
.model/sequential/dense_1/MatMul/ReadVariableOpReadVariableOp7model_sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	2*
dtype0С
model/sequential/dense_1/MatMulMatMul,model/sequential/dropout_2/Identity:output:06model/sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
/model/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0С
 model/sequential/dense_1/BiasAddBiasAdd)model/sequential/dense_1/MatMul:product:07model/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/sequential/dense_1/ReluRelu)model/sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ў
/model/sequential/conv2d/Conv2D_1/ReadVariableOpReadVariableOp6model_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Я
 model/sequential/conv2d/Conv2D_1Conv2Dinput_27model/sequential/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::*
paddingVALID*
strides
Є
0model/sequential/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp7model_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
!model/sequential/conv2d/BiasAdd_1BiasAdd)model/sequential/conv2d/Conv2D_1:output:08model/sequential/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::
"model/sequential/activation/Relu_1Relu*model/sequential/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ::в
(model/sequential/max_pooling2d/MaxPool_1MaxPool0model/sequential/activation/Relu_1:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

#model/sequential/dropout/Identity_1Identity1model/sequential/max_pooling2d/MaxPool_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџВ
1model/sequential/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp8model_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ј
"model/sequential/conv2d_1/Conv2D_1Conv2D,model/sequential/dropout/Identity_1:output:09model/sequential/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
Ј
2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp9model_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0б
#model/sequential/conv2d_1/BiasAdd_1BiasAdd+model/sequential/conv2d_1/Conv2D_1:output:0:model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
$model/sequential/activation_1/Relu_1Relu,model/sequential/conv2d_1/BiasAdd_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџж
*model/sequential/max_pooling2d_1/MaxPool_1MaxPool2model/sequential/activation_1/Relu_1:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
 
%model/sequential/dropout_1/Identity_1Identity3model/sequential/max_pooling2d_1/MaxPool_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџq
 model/sequential/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"џџџџь  Л
"model/sequential/flatten/Reshape_1Reshape.model/sequential/dropout_1/Identity_1:output:0)model/sequential/flatten/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџьІ
.model/sequential/dense/MatMul_1/ReadVariableOpReadVariableOp5model_sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
ь*
dtype0С
model/sequential/dense/MatMul_1MatMul+model/sequential/flatten/Reshape_1:output:06model/sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
/model/sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Т
 model/sequential/dense/BiasAdd_1BiasAdd)model/sequential/dense/MatMul_1:product:07model/sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
model/sequential/dense/Relu_1Relu)model/sequential/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model/sequential/dropout_2/Identity_1Identity+model/sequential/dense/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџЉ
0model/sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp7model_sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	2*
dtype0Ч
!model/sequential/dense_1/MatMul_1MatMul.model/sequential/dropout_2/Identity_1:output:08model/sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
1model/sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ч
"model/sequential/dense_1/BiasAdd_1BiasAdd+model/sequential/dense_1/MatMul_1:product:09model/sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/sequential/dense_1/Relu_1Relu+model/sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
model/lambda/subSub+model/sequential/dense_1/Relu:activations:0-model/sequential/dense_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
model/lambda/SquareSquaremodel/lambda/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
"model/lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
model/lambda/SumSummodel/lambda/Square:y:0+model/lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(W
model/lambda/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model/lambda/MaximumMaximummodel/lambda/Sum:output:0model/lambda/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџe
model/lambda/SqrtSqrtmodel/lambda/Maximum:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
IdentityIdentitymodel/lambda/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџТ
NoOpNoOp/^model/sequential/conv2d/BiasAdd/ReadVariableOp1^model/sequential/conv2d/BiasAdd_1/ReadVariableOp.^model/sequential/conv2d/Conv2D/ReadVariableOp0^model/sequential/conv2d/Conv2D_1/ReadVariableOp1^model/sequential/conv2d_1/BiasAdd/ReadVariableOp3^model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp0^model/sequential/conv2d_1/Conv2D/ReadVariableOp2^model/sequential/conv2d_1/Conv2D_1/ReadVariableOp.^model/sequential/dense/BiasAdd/ReadVariableOp0^model/sequential/dense/BiasAdd_1/ReadVariableOp-^model/sequential/dense/MatMul/ReadVariableOp/^model/sequential/dense/MatMul_1/ReadVariableOp0^model/sequential/dense_1/BiasAdd/ReadVariableOp2^model/sequential/dense_1/BiasAdd_1/ReadVariableOp/^model/sequential/dense_1/MatMul/ReadVariableOp1^model/sequential/dense_1/MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ<<:џџџџџџџџџ<<: : : : : : : : 2`
.model/sequential/conv2d/BiasAdd/ReadVariableOp.model/sequential/conv2d/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d/BiasAdd_1/ReadVariableOp0model/sequential/conv2d/BiasAdd_1/ReadVariableOp2^
-model/sequential/conv2d/Conv2D/ReadVariableOp-model/sequential/conv2d/Conv2D/ReadVariableOp2b
/model/sequential/conv2d/Conv2D_1/ReadVariableOp/model/sequential/conv2d/Conv2D_1/ReadVariableOp2d
0model/sequential/conv2d_1/BiasAdd/ReadVariableOp0model/sequential/conv2d_1/BiasAdd/ReadVariableOp2h
2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp2b
/model/sequential/conv2d_1/Conv2D/ReadVariableOp/model/sequential/conv2d_1/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_1/Conv2D_1/ReadVariableOp1model/sequential/conv2d_1/Conv2D_1/ReadVariableOp2^
-model/sequential/dense/BiasAdd/ReadVariableOp-model/sequential/dense/BiasAdd/ReadVariableOp2b
/model/sequential/dense/BiasAdd_1/ReadVariableOp/model/sequential/dense/BiasAdd_1/ReadVariableOp2\
,model/sequential/dense/MatMul/ReadVariableOp,model/sequential/dense/MatMul/ReadVariableOp2`
.model/sequential/dense/MatMul_1/ReadVariableOp.model/sequential/dense/MatMul_1/ReadVariableOp2b
/model/sequential/dense_1/BiasAdd/ReadVariableOp/model/sequential/dense_1/BiasAdd/ReadVariableOp2f
1model/sequential/dense_1/BiasAdd_1/ReadVariableOp1model/sequential/dense_1/BiasAdd_1/ReadVariableOp2`
.model/sequential/dense_1/MatMul/ReadVariableOp.model/sequential/dense_1/MatMul/ReadVariableOp2d
0model/sequential/dense_1/MatMul_1/ReadVariableOp0model/sequential/dense_1/MatMul_1/ReadVariableOp:X T
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_2:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ж

ћ
B__inference_conv2d_layer_call_and_return_conditional_losses_381973

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ::S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ<<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ<<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
№
c
*__inference_dropout_1_layer_call_fn_382064

inputs
identityЂStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_381484w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ц
A__inference_model_layer_call_and_return_conditional_losses_381797
input_1
input_2+
sequential_381757:
sequential_381759:+
sequential_381761:
sequential_381763:%
sequential_381765:
ь 
sequential_381767:	$
sequential_381769:	2
sequential_381771:2
identityЂ"sequential/StatefulPartitionedCallЂ$sequential/StatefulPartitionedCall_1њ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_381757sequential_381759sequential_381761sequential_381763sequential_381765sequential_381767sequential_381769sequential_381771*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_381586ќ
$sequential/StatefulPartitionedCall_1StatefulPartitionedCallinput_2sequential_381757sequential_381759sequential_381761sequential_381763sequential_381765sequential_381767sequential_381769sequential_381771*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_381586
lambda/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_381794n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџn
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ<<:џџџџџџџџџ<<: : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:X T
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_2:&"
 
_user_specified_name381757:&"
 
_user_specified_name381759:&"
 
_user_specified_name381761:&"
 
_user_specified_name381763:&"
 
_user_specified_name381765:&"
 
_user_specified_name381767:&"
 
_user_specified_name381769:&	"
 
_user_specified_name381771
§3
ы
F__inference_sequential_layer_call_and_return_conditional_losses_381539
conv2d_input'
conv2d_381426:
conv2d_381428:)
conv2d_1_381461:
conv2d_1_381463: 
dense_381504:
ь
dense_381506:	!
dense_1_381533:	2
dense_1_381535:2
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallљ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_381426conv2d_381428*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ::*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_381425ш
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ::* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_activation_layer_call_and_return_conditional_losses_381435ъ
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381398ё
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_381449
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_381461conv2d_1_381463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_381460ю
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_381470№
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_381408
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_381484о
flatten/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџь* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_381491
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_381504dense_381506*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_381503
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_381520
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_381533dense_1_381535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_381532w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ<<: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ<<
&
_user_specified_nameconv2d_input:&"
 
_user_specified_name381426:&"
 
_user_specified_name381428:&"
 
_user_specified_name381461:&"
 
_user_specified_name381463:&"
 
_user_specified_name381504:&"
 
_user_specified_name381506:&"
 
_user_specified_name381533:&"
 
_user_specified_name381535

д
+__inference_sequential_layer_call_fn_381628
conv2d_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
ь
	unknown_4:	
	unknown_5:	2
	unknown_6:2
identityЂStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_381586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ<<: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ<<
&
_user_specified_nameconv2d_input:&"
 
_user_specified_name381610:&"
 
_user_specified_name381612:&"
 
_user_specified_name381614:&"
 
_user_specified_name381616:&"
 
_user_specified_name381618:&"
 
_user_specified_name381620:&"
 
_user_specified_name381622:&"
 
_user_specified_name381624


)__inference_conv2d_1_layer_call_fn_382029

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_381460w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name382023:&"
 
_user_specified_name382025
Я

b
C__inference_dropout_layer_call_and_return_conditional_losses_382015

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
І
F
*__inference_dropout_2_layer_call_fn_382127

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_381578a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ь
d
H__inference_activation_1_layer_call_and_return_conditional_losses_382049

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
a
C__inference_dropout_layer_call_and_return_conditional_losses_382020

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Т
F
*__inference_dropout_1_layer_call_fn_382069

inputs
identityЛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_381566h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_382086

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_381898
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Х
_
C__inference_flatten_layer_call_and_return_conditional_losses_381491

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџь  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџьY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџь"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
м
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_381578

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381398

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю
Q
#__inference__update_step_xla_381903
gradient
variable:
ь*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:џџџџџџџџџ: *
	_noinline(:R N
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ъ
b
F__inference_activation_layer_call_and_return_conditional_losses_381435

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ::b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ::"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:::W S
/
_output_shapes
:џџџџџџџџџ::
 
_user_specified_nameinputs

з
&__inference_model_layer_call_fn_381819
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
ь
	unknown_4:	
	unknown_5:	2
	unknown_6:2
identityЂStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_381753o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ<<:џџџџџџџџџ<<: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_2:&"
 
_user_specified_name381801:&"
 
_user_specified_name381803:&"
 
_user_specified_name381805:&"
 
_user_specified_name381807:&"
 
_user_specified_name381809:&"
 
_user_specified_name381811:&"
 
_user_specified_name381813:&	"
 
_user_specified_name381815
ђ

(__inference_dense_1_layer_call_fn_382153

inputs
unknown:	2
	unknown_0:2
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_381532o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name382147:&"
 
_user_specified_name382149
Х
_
C__inference_flatten_layer_call_and_return_conditional_losses_382097

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџь  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџьY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџь"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ

&__inference_dense_layer_call_fn_382106

inputs
unknown:
ь
	unknown_0:	
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_381503p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџь: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџь
 
_user_specified_nameinputs:&"
 
_user_specified_name382100:&"
 
_user_specified_name382102
О
D
(__inference_dropout_layer_call_fn_382003

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_381553h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
м
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_382144

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

з
&__inference_model_layer_call_fn_381841
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
ь
	unknown_4:	
	unknown_5:	2
	unknown_6:2
identityЂStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_381797o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ<<:џџџџџџџџџ<<: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_2:&"
 
_user_specified_name381823:&"
 
_user_specified_name381825:&"
 
_user_specified_name381827:&"
 
_user_specified_name381829:&"
 
_user_specified_name381831:&"
 
_user_specified_name381833:&"
 
_user_specified_name381835:&	"
 
_user_specified_name381837
м
n
B__inference_lambda_layer_call_and_return_conditional_losses_381954
inputs_0
inputs_1
identityP
subSubinputs_0inputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2K
SquareSquaresub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    b
MaximumMaximumSum:output:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџK
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:џџџџџџџџџP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2:Q M
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_1
и

§
D__inference_conv2d_1_layer_call_and_return_conditional_losses_381460

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ь
a
(__inference_dropout_layer_call_fn_381998

inputs
identityЂStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_381449w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а
W
#__inference__update_step_xla_381883
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ш 
н
__inference__traced_save_382307
file_prefix>
$read_disablecopyonread_conv2d_kernel:2
$read_1_disablecopyonread_conv2d_bias:B
(read_2_disablecopyonread_conv2d_1_kernel:4
&read_3_disablecopyonread_conv2d_1_bias:9
%read_4_disablecopyonread_dense_kernel:
ь2
#read_5_disablecopyonread_dense_bias:	:
'read_6_disablecopyonread_dense_1_kernel:	23
%read_7_disablecopyonread_dense_1_bias:2,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: R
8read_10_disablecopyonread_rmsprop_velocity_conv2d_kernel:D
6read_11_disablecopyonread_rmsprop_velocity_conv2d_bias:T
:read_12_disablecopyonread_rmsprop_velocity_conv2d_1_kernel:F
8read_13_disablecopyonread_rmsprop_velocity_conv2d_1_bias:K
7read_14_disablecopyonread_rmsprop_velocity_dense_kernel:
ьD
5read_15_disablecopyonread_rmsprop_velocity_dense_bias:	L
9read_16_disablecopyonread_rmsprop_velocity_dense_1_kernel:	2E
7read_17_disablecopyonread_rmsprop_velocity_dense_1_bias:2)
read_18_disablecopyonread_total: )
read_19_disablecopyonread_count: 
savev2_const
identity_41ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 Ј
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
  
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 А
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ь*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ьe

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ьw
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
  
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_dense_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Ј
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	2y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 Ё
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:2v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_10/DisableCopyOnReadDisableCopyOnRead8read_10_disablecopyonread_rmsprop_velocity_conv2d_kernel"/device:CPU:0*
_output_shapes
 Т
Read_10/ReadVariableOpReadVariableOp8read_10_disablecopyonread_rmsprop_velocity_conv2d_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_rmsprop_velocity_conv2d_bias"/device:CPU:0*
_output_shapes
 Д
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_rmsprop_velocity_conv2d_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead:read_12_disablecopyonread_rmsprop_velocity_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_12/ReadVariableOpReadVariableOp:read_12_disablecopyonread_rmsprop_velocity_conv2d_1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_13/DisableCopyOnReadDisableCopyOnRead8read_13_disablecopyonread_rmsprop_velocity_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ж
Read_13/ReadVariableOpReadVariableOp8read_13_disablecopyonread_rmsprop_velocity_conv2d_1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_14/DisableCopyOnReadDisableCopyOnRead7read_14_disablecopyonread_rmsprop_velocity_dense_kernel"/device:CPU:0*
_output_shapes
 Л
Read_14/ReadVariableOpReadVariableOp7read_14_disablecopyonread_rmsprop_velocity_dense_kernel^Read_14/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ь*
dtype0q
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ьg
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ь
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_rmsprop_velocity_dense_bias"/device:CPU:0*
_output_shapes
 Д
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_rmsprop_velocity_dense_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_16/DisableCopyOnReadDisableCopyOnRead9read_16_disablecopyonread_rmsprop_velocity_dense_1_kernel"/device:CPU:0*
_output_shapes
 М
Read_16/ReadVariableOpReadVariableOp9read_16_disablecopyonread_rmsprop_velocity_dense_1_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2f
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	2
Read_17/DisableCopyOnReadDisableCopyOnRead7read_17_disablecopyonread_rmsprop_velocity_dense_1_bias"/device:CPU:0*
_output_shapes
 Е
Read_17/ReadVariableOpReadVariableOp7read_17_disablecopyonread_rmsprop_velocity_dense_1_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:2t
Read_18/DisableCopyOnReadDisableCopyOnReadread_18_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_18/ReadVariableOpReadVariableOpread_18_disablecopyonread_total^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_19/DisableCopyOnReadDisableCopyOnReadread_19_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_19/ReadVariableOpReadVariableOpread_19_disablecopyonread_count^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*о
valueдBбB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *#
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_40Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_41IdentityIdentity_40:output:0^NoOp*
T0*
_output_shapes
: У
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_41Identity_41:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name RMSprop/velocity/conv2d/kernel:<8
6
_user_specified_nameRMSprop/velocity/conv2d/bias:@<
:
_user_specified_name" RMSprop/velocity/conv2d_1/kernel:>:
8
_user_specified_name RMSprop/velocity/conv2d_1/bias:=9
7
_user_specified_nameRMSprop/velocity/dense/kernel:;7
5
_user_specified_nameRMSprop/velocity/dense/bias:?;
9
_user_specified_name!RMSprop/velocity/dense_1/kernel:=9
7
_user_specified_nameRMSprop/velocity/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
Ю

ѕ
C__inference_dense_1_layer_call_and_return_conditional_losses_382164

inputs1
matmul_readvariableop_resource:	2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Л
L
0__inference_max_pooling2d_1_layer_call_fn_382054

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_381408
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ё
S
'__inference_lambda_layer_call_fn_381930
inputs_0
inputs_1
identityН
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_381794`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2:Q M
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_1
д
l
B__inference_lambda_layer_call_and_return_conditional_losses_381750

inputs
inputs_1
identityN
subSubinputsinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2K
SquareSquaresub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    b
MaximumMaximumSum:output:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџK
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:џџџџџџџџџP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


'__inference_conv2d_layer_call_fn_381963

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ::*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_381425w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ::<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ<<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ<<
 
_user_specified_nameinputs:&"
 
_user_specified_name381957:&"
 
_user_specified_name381959
З
J
.__inference_max_pooling2d_layer_call_fn_381988

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381398
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
и

§
D__inference_conv2d_1_layer_call_and_return_conditional_losses_382039

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

д
+__inference_sequential_layer_call_fn_381607
conv2d_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
ь
	unknown_4:	
	unknown_5:	2
	unknown_6:2
identityЂStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_381539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ<<: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ<<
&
_user_specified_nameconv2d_input:&"
 
_user_specified_name381589:&"
 
_user_specified_name381591:&"
 
_user_specified_name381593:&"
 
_user_specified_name381595:&"
 
_user_specified_name381597:&"
 
_user_specified_name381599:&"
 
_user_specified_name381601:&"
 
_user_specified_name381603
Џ
L
#__inference__update_step_xla_381908
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
д
c
*__inference_dropout_2_layer_call_fn_382122

inputs
identityЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_381520p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф
G
+__inference_activation_layer_call_fn_381978

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ::* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_activation_layer_call_and_return_conditional_losses_381435h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ::"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:::W S
/
_output_shapes
:џџџџџџџџџ::
 
_user_specified_nameinputs
ж

ћ
B__inference_conv2d_layer_call_and_return_conditional_losses_381425

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ::g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ::S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ<<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ<<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
б

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_382081

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
м
n
B__inference_lambda_layer_call_and_return_conditional_losses_381942
inputs_0
inputs_1
identityP
subSubinputs_0inputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2K
SquareSquaresub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    b
MaximumMaximumSum:output:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџK
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:џџџџџџџџџP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2:Q M
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_1
д
l
B__inference_lambda_layer_call_and_return_conditional_losses_381794

inputs
inputs_1
identityN
subSubinputsinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2K
SquareSquaresub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    b
MaximumMaximumSum:output:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџK
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:џџџџџџџџџP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ю

ѕ
C__inference_dense_1_layer_call_and_return_conditional_losses_381532

inputs1
matmul_readvariableop_resource:	2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_382139

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381993

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і
a
C__inference_dropout_layer_call_and_return_conditional_losses_381553

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а
W
#__inference__update_step_xla_381893
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
д

ѕ
A__inference_dense_layer_call_and_return_conditional_losses_381503

inputs2
matmul_readvariableop_resource:
ь.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ь*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџь: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџь
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_381408

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_381888
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ц
A__inference_model_layer_call_and_return_conditional_losses_381753
input_1
input_2+
sequential_381713:
sequential_381715:+
sequential_381717:
sequential_381719:%
sequential_381721:
ь 
sequential_381723:	$
sequential_381725:	2
sequential_381727:2
identityЂ"sequential/StatefulPartitionedCallЂ$sequential/StatefulPartitionedCall_1њ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_381713sequential_381715sequential_381717sequential_381719sequential_381721sequential_381723sequential_381725sequential_381727*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_381539ќ
$sequential/StatefulPartitionedCall_1StatefulPartitionedCallinput_2sequential_381713sequential_381715sequential_381717sequential_381719sequential_381721sequential_381723sequential_381725sequential_381727*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_381539
lambda/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_381750n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџn
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ<<:џџџџџџџџџ<<: : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:X T
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ<<
!
_user_specified_name	input_2:&"
 
_user_specified_name381713:&"
 
_user_specified_name381715:&"
 
_user_specified_name381717:&"
 
_user_specified_name381719:&"
 
_user_specified_name381721:&"
 
_user_specified_name381723:&"
 
_user_specified_name381725:&	"
 
_user_specified_name381727
Є_
с
"__inference__traced_restore_382376
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel:.
 assignvariableop_3_conv2d_1_bias:3
assignvariableop_4_dense_kernel:
ь,
assignvariableop_5_dense_bias:	4
!assignvariableop_6_dense_1_kernel:	2-
assignvariableop_7_dense_1_bias:2&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: L
2assignvariableop_10_rmsprop_velocity_conv2d_kernel:>
0assignvariableop_11_rmsprop_velocity_conv2d_bias:N
4assignvariableop_12_rmsprop_velocity_conv2d_1_kernel:@
2assignvariableop_13_rmsprop_velocity_conv2d_1_bias:E
1assignvariableop_14_rmsprop_velocity_dense_kernel:
ь>
/assignvariableop_15_rmsprop_velocity_dense_bias:	F
3assignvariableop_16_rmsprop_velocity_dense_1_kernel:	2?
1assignvariableop_17_rmsprop_velocity_dense_1_bias:2#
assignvariableop_18_total: #
assignvariableop_19_count: 
identity_21ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9И
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*о
valueдBбB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_10AssignVariableOp2assignvariableop_10_rmsprop_velocity_conv2d_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_11AssignVariableOp0assignvariableop_11_rmsprop_velocity_conv2d_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_12AssignVariableOp4assignvariableop_12_rmsprop_velocity_conv2d_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_13AssignVariableOp2assignvariableop_13_rmsprop_velocity_conv2d_1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_14AssignVariableOp1assignvariableop_14_rmsprop_velocity_dense_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_15AssignVariableOp/assignvariableop_15_rmsprop_velocity_dense_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_16AssignVariableOp3assignvariableop_16_rmsprop_velocity_dense_1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_17AssignVariableOp1assignvariableop_17_rmsprop_velocity_dense_1_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: а
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_21Identity_21:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name RMSprop/velocity/conv2d/kernel:<8
6
_user_specified_nameRMSprop/velocity/conv2d/bias:@<
:
_user_specified_name" RMSprop/velocity/conv2d_1/kernel:>:
8
_user_specified_name RMSprop/velocity/conv2d_1/bias:=9
7
_user_specified_nameRMSprop/velocity/dense/kernel:;7
5
_user_specified_nameRMSprop/velocity/dense/bias:?;
9
_user_specified_name!RMSprop/velocity/dense_1/kernel:=9
7
_user_specified_nameRMSprop/velocity/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
Ё
S
'__inference_lambda_layer_call_fn_381924
inputs_0
inputs_1
identityН
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_381750`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2:Q M
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
inputs_1
А
D
(__inference_flatten_layer_call_fn_382091

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџь* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_381491a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџь"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ЪL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*і
serving_defaultт
C
input_18
serving_default_input_1:0џџџџџџџџџ<<
C
input_28
serving_default_input_2:0џџџџџџџџџ<<:
lambda0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ф
Б
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
А
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
layer-8
layer_with_weights-2
layer-9
layer-10
layer_with_weights-3
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ѕ
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
X
&0
'1
(2
)3
*4
+5
,6
-7"
trackable_list_wrapper
X
&0
'1
(2
)3
*4
+5
,6
-7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
П
3trace_0
4trace_12
&__inference_model_layer_call_fn_381819
&__inference_model_layer_call_fn_381841Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z3trace_0z4trace_1
ѕ
5trace_0
6trace_12О
A__inference_model_layer_call_and_return_conditional_losses_381753
A__inference_model_layer_call_and_return_conditional_losses_381797Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z5trace_0z6trace_1
еBв
!__inference__wrapped_model_381393input_1input_2"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Д
7
_variables
8_iterations
9_learning_rate
:_index_dict
;_velocities
<
_momentums
=_average_gradients
>_update_step_xla"
experimentalOptimizer
,
?serving_default"
signature_map
н
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

&kernel
'bias
 F_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
М
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator"
_tf_keras_layer
н
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

(kernel
)bias
 `_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
М
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_random_generator"
_tf_keras_layer
Ѕ
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
X
&0
'1
(2
)3
*4
+5
,6
-7"
trackable_list_wrapper
X
&0
'1
(2
)3
*4
+5
,6
-7"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Э
trace_0
trace_12
+__inference_sequential_layer_call_fn_381607
+__inference_sequential_layer_call_fn_381628Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12Ш
F__inference_sequential_layer_call_and_return_conditional_losses_381539
F__inference_sequential_layer_call_and_return_conditional_losses_381586Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Х
trace_0
trace_12
'__inference_lambda_layer_call_fn_381924
'__inference_lambda_layer_call_fn_381930Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
ћ
trace_0
trace_12Р
B__inference_lambda_layer_call_and_return_conditional_losses_381942
B__inference_lambda_layer_call_and_return_conditional_losses_381954Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
':%2conv2d/kernel
:2conv2d/bias
):'2conv2d_1/kernel
:2conv2d_1/bias
 :
ь2dense/kernel
:2
dense/bias
!:	22dense_1/kernel
:22dense_1/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBє
&__inference_model_layer_call_fn_381819input_1input_2"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
&__inference_model_layer_call_fn_381841input_1input_2"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_381753input_1input_2"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_381797input_1input_2"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
g
80
 1
Ё2
Ђ3
Ѓ4
Є5
Ѕ6
І7
Ї8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
 0
Ё1
Ђ2
Ѓ3
Є4
Ѕ5
І6
Ї7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Н
Јtrace_0
Љtrace_1
Њtrace_2
Ћtrace_3
Ќtrace_4
­trace_5
Ўtrace_6
Џtrace_72к
#__inference__update_step_xla_381883
#__inference__update_step_xla_381888
#__inference__update_step_xla_381893
#__inference__update_step_xla_381898
#__inference__update_step_xla_381903
#__inference__update_step_xla_381908
#__inference__update_step_xla_381913
#__inference__update_step_xla_381918Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zЈtrace_0zЉtrace_1zЊtrace_2zЋtrace_3zЌtrace_4z­trace_5zЎtrace_6zЏtrace_7
вBЯ
$__inference_signature_wrapper_381878input_1input_2"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
у
Еtrace_02Ф
'__inference_conv2d_layer_call_fn_381963
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0
ў
Жtrace_02п
B__inference_conv2d_layer_call_and_return_conditional_losses_381973
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЖtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ч
Мtrace_02Ш
+__inference_activation_layer_call_fn_381978
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0

Нtrace_02у
F__inference_activation_layer_call_and_return_conditional_losses_381983
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zНtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
ъ
Уtrace_02Ы
.__inference_max_pooling2d_layer_call_fn_381988
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zУtrace_0

Фtrace_02ц
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381993
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
Л
Ъtrace_0
Ыtrace_12
(__inference_dropout_layer_call_fn_381998
(__inference_dropout_layer_call_fn_382003Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЪtrace_0zЫtrace_1
ё
Ьtrace_0
Эtrace_12Ж
C__inference_dropout_layer_call_and_return_conditional_losses_382015
C__inference_dropout_layer_call_and_return_conditional_losses_382020Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЬtrace_0zЭtrace_1
"
_generic_user_object
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
х
гtrace_02Ц
)__inference_conv2d_1_layer_call_fn_382029
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zгtrace_0

дtrace_02с
D__inference_conv2d_1_layer_call_and_return_conditional_losses_382039
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zдtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
щ
кtrace_02Ъ
-__inference_activation_1_layer_call_fn_382044
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zкtrace_0

лtrace_02х
H__inference_activation_1_layer_call_and_return_conditional_losses_382049
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zлtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
ь
сtrace_02Э
0__inference_max_pooling2d_1_layer_call_fn_382054
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zсtrace_0

тtrace_02ш
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_382059
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zтtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
П
шtrace_0
щtrace_12
*__inference_dropout_1_layer_call_fn_382064
*__inference_dropout_1_layer_call_fn_382069Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zшtrace_0zщtrace_1
ѕ
ъtrace_0
ыtrace_12К
E__inference_dropout_1_layer_call_and_return_conditional_losses_382081
E__inference_dropout_1_layer_call_and_return_conditional_losses_382086Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zъtrace_0zыtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
ф
ёtrace_02Х
(__inference_flatten_layer_call_fn_382091
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zёtrace_0
џ
ђtrace_02р
C__inference_flatten_layer_call_and_return_conditional_losses_382097
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zђtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ѓnon_trainable_variables
єlayers
ѕmetrics
 іlayer_regularization_losses
їlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
т
јtrace_02У
&__inference_dense_layer_call_fn_382106
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zјtrace_0
§
љtrace_02о
A__inference_dense_layer_call_and_return_conditional_losses_382117
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zљtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
П
џtrace_0
trace_12
*__inference_dropout_2_layer_call_fn_382122
*__inference_dropout_2_layer_call_fn_382127Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zџtrace_0ztrace_1
ѕ
trace_0
trace_12К
E__inference_dropout_2_layer_call_and_return_conditional_losses_382139
E__inference_dropout_2_layer_call_and_return_conditional_losses_382144Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
"
_generic_user_object
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_dense_1_layer_call_fn_382153
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_dense_1_layer_call_and_return_conditional_losses_382164
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
јBѕ
+__inference_sequential_layer_call_fn_381607conv2d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
+__inference_sequential_layer_call_fn_381628conv2d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_381539conv2d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_381586conv2d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
њBї
'__inference_lambda_layer_call_fn_381924inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
'__inference_lambda_layer_call_fn_381930inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lambda_layer_call_and_return_conditional_losses_381942inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lambda_layer_call_and_return_conditional_losses_381954inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
6:42RMSprop/velocity/conv2d/kernel
(:&2RMSprop/velocity/conv2d/bias
8:62 RMSprop/velocity/conv2d_1/kernel
*:(2RMSprop/velocity/conv2d_1/bias
/:-
ь2RMSprop/velocity/dense/kernel
(:&2RMSprop/velocity/dense/bias
0:.	22RMSprop/velocity/dense_1/kernel
):'22RMSprop/velocity/dense_1/bias
юBы
#__inference__update_step_xla_381883gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_381888gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_381893gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_381898gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_381903gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_381908gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_381913gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_381918gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBЮ
'__inference_conv2d_layer_call_fn_381963inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
B__inference_conv2d_layer_call_and_return_conditional_losses_381973inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
+__inference_activation_layer_call_fn_381978inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_activation_layer_call_and_return_conditional_losses_381983inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
иBе
.__inference_max_pooling2d_layer_call_fn_381988inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓB№
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381993inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
(__inference_dropout_layer_call_fn_381998inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
уBр
(__inference_dropout_layer_call_fn_382003inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
C__inference_dropout_layer_call_and_return_conditional_losses_382015inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
C__inference_dropout_layer_call_and_return_conditional_losses_382020inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_conv2d_1_layer_call_fn_382029inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_conv2d_1_layer_call_and_return_conditional_losses_382039inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
зBд
-__inference_activation_1_layer_call_fn_382044inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
H__inference_activation_1_layer_call_and_return_conditional_losses_382049inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
кBз
0__inference_max_pooling2d_1_layer_call_fn_382054inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_382059inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
*__inference_dropout_1_layer_call_fn_382064inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
*__inference_dropout_1_layer_call_fn_382069inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
E__inference_dropout_1_layer_call_and_return_conditional_losses_382081inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
E__inference_dropout_1_layer_call_and_return_conditional_losses_382086inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
вBЯ
(__inference_flatten_layer_call_fn_382091inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_flatten_layer_call_and_return_conditional_losses_382097inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
аBЭ
&__inference_dense_layer_call_fn_382106inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ыBш
A__inference_dense_layer_call_and_return_conditional_losses_382117inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
*__inference_dropout_2_layer_call_fn_382122inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
хBт
*__inference_dropout_2_layer_call_fn_382127inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
E__inference_dropout_2_layer_call_and_return_conditional_losses_382139inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
E__inference_dropout_2_layer_call_and_return_conditional_losses_382144inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
вBЯ
(__inference_dense_1_layer_call_fn_382153inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_dense_1_layer_call_and_return_conditional_losses_382164inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2countЅ
#__inference__update_step_xla_381883~xЂu
nЂk
!
gradient
<9	%Ђ"
њ

p
` VariableSpec 
`рђГСчЬ?
Њ "
 
#__inference__update_step_xla_381888f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`ряЌ§чЬ?
Њ "
 Ѕ
#__inference__update_step_xla_381893~xЂu
nЂk
!
gradient
<9	%Ђ"
њ

p
` VariableSpec 
`РчРчЬ?
Њ "
 
#__inference__update_step_xla_381898f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
` чРчЬ?
Њ "
 Ё
#__inference__update_step_xla_381903ztЂq
jЂg
# 
gradientџџџџџџџџџ
63	Ђ
њ
ь

p
` VariableSpec 
`рєРчЬ?
Њ "
 
#__inference__update_step_xla_381908hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
`рЃєРчЬ?
Њ "
 
#__inference__update_step_xla_381913pjЂg
`Ђ]

gradient	2
52	Ђ
њ	2

p
` VariableSpec 
`РѕРчЬ?
Њ "
 
#__inference__update_step_xla_381918f`Ђ]
VЂS

gradient2
0-	Ђ
њ2

p
` VariableSpec 
`рѕРчЬ?
Њ "
 Ы
!__inference__wrapped_model_381393Ѕ&'()*+,-hЂe
^Ђ[
YV
)&
input_1џџџџџџџџџ<<
)&
input_2џџџџџџџџџ<<
Њ "/Њ,
*
lambda 
lambdaџџџџџџџџџЛ
H__inference_activation_1_layer_call_and_return_conditional_losses_382049o7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 
-__inference_activation_1_layer_call_fn_382044d7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ ")&
unknownџџџџџџџџџЙ
F__inference_activation_layer_call_and_return_conditional_losses_381983o7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ::
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ::
 
+__inference_activation_layer_call_fn_381978d7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ::
Њ ")&
unknownџџџџџџџџџ::Л
D__inference_conv2d_1_layer_call_and_return_conditional_losses_382039s()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 
)__inference_conv2d_1_layer_call_fn_382029h()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ ")&
unknownџџџџџџџџџЙ
B__inference_conv2d_layer_call_and_return_conditional_losses_381973s&'7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ<<
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ::
 
'__inference_conv2d_layer_call_fn_381963h&'7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ<<
Њ ")&
unknownџџџџџџџџџ::Ћ
C__inference_dense_1_layer_call_and_return_conditional_losses_382164d,-0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 
(__inference_dense_1_layer_call_fn_382153Y,-0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџ2Њ
A__inference_dense_layer_call_and_return_conditional_losses_382117e*+0Ђ-
&Ђ#
!
inputsџџџџџџџџџь
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 
&__inference_dense_layer_call_fn_382106Z*+0Ђ-
&Ђ#
!
inputsџџџџџџџџџь
Њ ""
unknownџџџџџџџџџМ
E__inference_dropout_1_layer_call_and_return_conditional_losses_382081s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 М
E__inference_dropout_1_layer_call_and_return_conditional_losses_382086s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 
*__inference_dropout_1_layer_call_fn_382064h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ ")&
unknownџџџџџџџџџ
*__inference_dropout_1_layer_call_fn_382069h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ ")&
unknownџџџџџџџџџЎ
E__inference_dropout_2_layer_call_and_return_conditional_losses_382139e4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 Ў
E__inference_dropout_2_layer_call_and_return_conditional_losses_382144e4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 
*__inference_dropout_2_layer_call_fn_382122Z4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p
Њ ""
unknownџџџџџџџџџ
*__inference_dropout_2_layer_call_fn_382127Z4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p 
Њ ""
unknownџџџџџџџџџК
C__inference_dropout_layer_call_and_return_conditional_losses_382015s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 К
C__inference_dropout_layer_call_and_return_conditional_losses_382020s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 
(__inference_dropout_layer_call_fn_381998h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ ")&
unknownџџџџџџџџџ
(__inference_dropout_layer_call_fn_382003h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ ")&
unknownџџџџџџџџџЏ
C__inference_flatten_layer_call_and_return_conditional_losses_382097h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџь
 
(__inference_flatten_layer_call_fn_382091]7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџьй
B__inference_lambda_layer_call_and_return_conditional_losses_381942bЂ_
XЂU
KH
"
inputs_0џџџџџџџџџ2
"
inputs_1џџџџџџџџџ2

 
p
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 й
B__inference_lambda_layer_call_and_return_conditional_losses_381954bЂ_
XЂU
KH
"
inputs_0џџџџџџџџџ2
"
inputs_1џџџџџџџџџ2

 
p 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Г
'__inference_lambda_layer_call_fn_381924bЂ_
XЂU
KH
"
inputs_0џџџџџџџџџ2
"
inputs_1џџџџџџџџџ2

 
p
Њ "!
unknownџџџџџџџџџГ
'__inference_lambda_layer_call_fn_381930bЂ_
XЂU
KH
"
inputs_0џџџџџџџџџ2
"
inputs_1џџџџџџџџџ2

 
p 
Њ "!
unknownџџџџџџџџџѕ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_382059ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
0__inference_max_pooling2d_1_layer_call_fn_382054RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѓ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_381993ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
.__inference_max_pooling2d_layer_call_fn_381988RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
A__inference_model_layer_call_and_return_conditional_losses_381753Њ&'()*+,-pЂm
fЂc
YV
)&
input_1џџџџџџџџџ<<
)&
input_2џџџџџџџџџ<<
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 №
A__inference_model_layer_call_and_return_conditional_losses_381797Њ&'()*+,-pЂm
fЂc
YV
)&
input_1џџџџџџџџџ<<
)&
input_2џџџџџџџџџ<<
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ъ
&__inference_model_layer_call_fn_381819&'()*+,-pЂm
fЂc
YV
)&
input_1џџџџџџџџџ<<
)&
input_2џџџџџџџџџ<<
p

 
Њ "!
unknownџџџџџџџџџЪ
&__inference_model_layer_call_fn_381841&'()*+,-pЂm
fЂc
YV
)&
input_1џџџџџџџџџ<<
)&
input_2џџџџџџџџџ<<
p 

 
Њ "!
unknownџџџџџџџџџЩ
F__inference_sequential_layer_call_and_return_conditional_losses_381539&'()*+,-EЂB
;Ђ8
.+
conv2d_inputџџџџџџџџџ<<
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Щ
F__inference_sequential_layer_call_and_return_conditional_losses_381586&'()*+,-EЂB
;Ђ8
.+
conv2d_inputџџџџџџџџџ<<
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Ѓ
+__inference_sequential_layer_call_fn_381607t&'()*+,-EЂB
;Ђ8
.+
conv2d_inputџџџџџџџџџ<<
p

 
Њ "!
unknownџџџџџџџџџ2Ѓ
+__inference_sequential_layer_call_fn_381628t&'()*+,-EЂB
;Ђ8
.+
conv2d_inputџџџџџџџџџ<<
p 

 
Њ "!
unknownџџџџџџџџџ2п
$__inference_signature_wrapper_381878Ж&'()*+,-yЂv
Ђ 
oЊl
4
input_1)&
input_1џџџџџџџџџ<<
4
input_2)&
input_2џџџџџџџџџ<<"/Њ,
*
lambda 
lambdaџџџџџџџџџ