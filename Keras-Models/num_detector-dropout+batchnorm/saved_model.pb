??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_6/gamma
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_6/beta
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_6/moving_mean
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_6/moving_variance
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
: *
dtype0
?
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
: *
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
: *
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
: *
dtype0
z
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_9/kernel
s
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel* 
_output_shapes
:
??*
dtype0
q
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_9/bias
j
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_8/gamma
?
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_8/beta
?
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_8/moving_mean
?
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_8/moving_variance
?
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_10/kernel
u
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel* 
_output_shapes
:
??*
dtype0
s
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_10/bias
l
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_9/gamma
?
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_9/beta
?
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_9/moving_mean
?
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_9/moving_variance
?
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	?
*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_8/kernel/m
?
*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_8/bias/m
y
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_6/gamma/m
?
6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_6/beta/m
?
5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_9/kernel/m
?
*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_9/bias/m
y
(Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_7/gamma/m
?
6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_7/beta/m
?
5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes
: *
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_9/kernel/m
?
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_9/bias/m
x
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_8/gamma/m
?
6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_8/beta/m
?
5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_10/kernel/m
?
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_10/bias/m
z
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_9/gamma/m
?
6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_9/beta/m
?
5Adam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*'
shared_nameAdam/dense_11/kernel/m
?
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes
:	?
*
dtype0
?
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_8/kernel/v
?
*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_8/bias/v
y
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_6/gamma/v
?
6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_6/beta/v
?
5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_9/kernel/v
?
*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_9/bias/v
y
(Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_7/gamma/v
?
6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_7/beta/v
?
5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes
: *
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_9/kernel/v
?
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_9/bias/v
x
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_8/gamma/v
?
6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_8/beta/v
?
5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_10/kernel/v
?
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_10/bias/v
z
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_9/gamma/v
?
6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_9/beta/v
?
5Adam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*'
shared_nameAdam/dense_11/kernel/v
?
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes
:	?
*
dtype0
?
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?}
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?|
value?|B?| B?|
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
?
'axis
	(gamma
)beta
*moving_mean
+moving_variance
,trainable_variables
-	variables
.regularization_losses
/	keras_api
R
0trainable_variables
1	variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
R
:trainable_variables
;	variables
<regularization_losses
=	keras_api
R
>trainable_variables
?	variables
@regularization_losses
A	keras_api
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
R
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
R
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
h

Skernel
Tbias
Utrainable_variables
V	variables
Wregularization_losses
X	keras_api
?
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance
^trainable_variables
_	variables
`regularization_losses
a	keras_api
R
btrainable_variables
c	variables
dregularization_losses
e	keras_api
h

fkernel
gbias
htrainable_variables
i	variables
jregularization_losses
k	keras_api
?
laxis
	mgamma
nbeta
omoving_mean
pmoving_variance
qtrainable_variables
r	variables
sregularization_losses
t	keras_api
R
utrainable_variables
v	variables
wregularization_losses
x	keras_api
h

ykernel
zbias
{trainable_variables
|	variables
}regularization_losses
~	keras_api
?
iter
?beta_1
?beta_2

?decay
?learning_ratem?m?(m?)m?4m?5m?Cm?Dm?Sm?Tm?Zm?[m?fm?gm?mm?nm?ym?zm?v?v?(v?)v?4v?5v?Cv?Dv?Sv?Tv?Zv?[v?fv?gv?mv?nv?yv?zv?
?
0
1
(2
)3
44
55
C6
D7
S8
T9
Z10
[11
f12
g13
m14
n15
y16
z17
 
?
0
1
(2
)3
*4
+5
46
57
C8
D9
E10
F11
S12
T13
Z14
[15
\16
]17
f18
g19
m20
n21
o22
p23
y24
z25
?
trainable_variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
?metrics
	variables
?layer_metrics
 
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
?metrics
?layer_metrics
 
 
 
?
trainable_variables
 	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
!regularization_losses
?metrics
?layer_metrics
 
 
 
?
#trainable_variables
$	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
%regularization_losses
?metrics
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
*2
+3
 
?
,trainable_variables
-	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
.regularization_losses
?metrics
?layer_metrics
 
 
 
?
0trainable_variables
1	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
2regularization_losses
?metrics
?layer_metrics
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
?
6trainable_variables
7	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
8regularization_losses
?metrics
?layer_metrics
 
 
 
?
:trainable_variables
;	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
<regularization_losses
?metrics
?layer_metrics
 
 
 
?
>trainable_variables
?	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
@regularization_losses
?metrics
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

C0
D1
E2
F3
 
?
Gtrainable_variables
H	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Iregularization_losses
?metrics
?layer_metrics
 
 
 
?
Ktrainable_variables
L	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Mregularization_losses
?metrics
?layer_metrics
 
 
 
?
Otrainable_variables
P	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Qregularization_losses
?metrics
?layer_metrics
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

S0
T1
 
?
Utrainable_variables
V	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Wregularization_losses
?metrics
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
\2
]3
 
?
^trainable_variables
_	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
`regularization_losses
?metrics
?layer_metrics
 
 
 
?
btrainable_variables
c	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
dregularization_losses
?metrics
?layer_metrics
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

f0
g1

f0
g1
 
?
htrainable_variables
i	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
jregularization_losses
?metrics
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

m0
n1

m0
n1
o2
p3
 
?
qtrainable_variables
r	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
sregularization_losses
?metrics
?layer_metrics
 
 
 
?
utrainable_variables
v	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
wregularization_losses
?metrics
?layer_metrics
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

y0
z1

y0
z1
 
?
{trainable_variables
|	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
}regularization_losses
?metrics
?layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
8
*0
+1
E2
F3
\4
]5
o6
p7
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

*0
+1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

E0
F1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

\0
]1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

o0
p1
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_6/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_7/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_9/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_6/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_7/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_9/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_8_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_8_inputconv2d_8/kernelconv2d_8/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense_9/kerneldense_9/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betadense_10/kerneldense_10/bias%batch_normalization_9/moving_variancebatch_normalization_9/gamma!batch_normalization_9/moving_meanbatch_normalization_9/betadense_11/kerneldense_11/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_158439
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_9/beta/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_9/beta/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpConst*T
TinM
K2I	*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_159704
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense_9/kerneldense_9/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_10/kerneldense_10/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_8/kernel/mAdam/conv2d_8/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/dense_9/kernel/mAdam/dense_9/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/dense_10/kernel/mAdam/dense_10/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/mAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/dense_9/kernel/vAdam/dense_9/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/dense_10/kernel/vAdam/dense_10/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/vAdam/dense_11/kernel/vAdam/dense_11/bias/v*S
TinL
J2H*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_159927??
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_159234

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_8_layer_call_fn_159321

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_1577962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_157584

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
-__inference_sequential_7_layer_call_fn_158823

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?


unknown_24:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_1581142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_158950

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1569412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_159426

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158870

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_11_layer_call_and_return_conditional_losses_159459

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_activation_5_layer_call_and_return_conditional_losses_158847

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?*
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_159268

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_156941

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_157592

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?]
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158374
conv2d_8_input)
conv2d_8_158303:@
conv2d_8_158305:@*
batch_normalization_6_158310:@*
batch_normalization_6_158312:@*
batch_normalization_6_158314:@*
batch_normalization_6_158316:@)
conv2d_9_158320:@ 
conv2d_9_158322: *
batch_normalization_7_158327: *
batch_normalization_7_158329: *
batch_normalization_7_158331: *
batch_normalization_7_158333: "
dense_9_158338:
??
dense_9_158340:	?+
batch_normalization_8_158343:	?+
batch_normalization_8_158345:	?+
batch_normalization_8_158347:	?+
batch_normalization_8_158349:	?#
dense_10_158353:
??
dense_10_158355:	?+
batch_normalization_9_158358:	?+
batch_normalization_9_158360:	?+
batch_normalization_9_158362:	?+
batch_normalization_9_158364:	?"
dense_11_158368:	?

dense_11_158370:

identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_158303conv2d_8_158305*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1574802"
 conv2d_8/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1574912
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1568692!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_158310batch_normalization_6_158312batch_normalization_6_158314batch_normalization_6_158316*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1579542/
-batch_normalization_6/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_1579182#
!dropout_6/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_9_158320conv2d_9_158322*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1575382"
 conv2d_9/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1575492
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1570072!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_158327batch_normalization_7_158329batch_normalization_7_158331batch_normalization_7_158333*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1578712/
-batch_normalization_7/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_1578352#
!dropout_7/StatefulPartitionedCall?
flatten_3/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1575922
flatten_3/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_9_158338dense_9_158340*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1576052!
dense_9/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_8_158343batch_normalization_8_158345batch_normalization_8_158347batch_normalization_8_158349*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1572232/
-batch_normalization_8/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_1577962#
!dropout_8/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_10_158353dense_10_158355*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1576382"
 dense_10/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_9_158358batch_normalization_9_158360batch_normalization_9_158362batch_normalization_9_158364*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_1573852/
-batch_normalization_9/StatefulPartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1577632#
!dropout_9/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_11_158368dense_11_158370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1576712"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????
(
_user_specified_nameconv2d_8_input
?
?
-__inference_sequential_7_layer_call_fn_158226
conv2d_8_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?


unknown_24:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_1581142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????
(
_user_specified_nameconv2d_8_input
?
I
-__inference_activation_6_layer_call_fn_159032

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1575492
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_157079

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_157658

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_activation_5_layer_call_and_return_conditional_losses_157491

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_157511

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_158833

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_158937

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1568972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_8_layer_call_fn_159281

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1571632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_6_layer_call_fn_159003

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_1579182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_158963

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1575112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?V
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_157678

inputs)
conv2d_8_157481:@
conv2d_8_157483:@*
batch_normalization_6_157512:@*
batch_normalization_6_157514:@*
batch_normalization_6_157516:@*
batch_normalization_6_157518:@)
conv2d_9_157539:@ 
conv2d_9_157541: *
batch_normalization_7_157570: *
batch_normalization_7_157572: *
batch_normalization_7_157574: *
batch_normalization_7_157576: "
dense_9_157606:
??
dense_9_157608:	?+
batch_normalization_8_157611:	?+
batch_normalization_8_157613:	?+
batch_normalization_8_157615:	?+
batch_normalization_8_157617:	?#
dense_10_157639:
??
dense_10_157641:	?+
batch_normalization_9_157644:	?+
batch_normalization_9_157646:	?+
batch_normalization_9_157648:	?+
batch_normalization_9_157650:	?"
dense_11_157672:	?

dense_11_157674:

identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_157481conv2d_8_157483*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1574802"
 conv2d_8/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1574912
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1568692!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_157512batch_normalization_6_157514batch_normalization_6_157516batch_normalization_6_157518*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1575112/
-batch_normalization_6/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_1575262
dropout_6/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_9_157539conv2d_9_157541*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1575382"
 conv2d_9/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1575492
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1570072!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_157570batch_normalization_7_157572batch_normalization_7_157574batch_normalization_7_157576*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1575692/
-batch_normalization_7/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_1575842
dropout_7/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1575922
flatten_3/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_9_157606dense_9_157608*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1576052!
dense_9/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_8_157611batch_normalization_8_157613batch_normalization_8_157615batch_normalization_8_157617*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1571632/
-batch_normalization_8/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_1576252
dropout_8/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_10_157639dense_10_157641*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1576382"
 dense_10/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_9_157644batch_normalization_9_157646batch_normalization_9_157648batch_normalization_9_157650*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_1573252/
-batch_normalization_9/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1576582
dropout_9/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_11_157672dense_11_157674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1576712"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_159395

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_159173

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_8_layer_call_fn_158842

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1574802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_159161

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_159143

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1575692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
C__inference_dense_9_layer_call_and_return_conditional_losses_157605

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_flatten_3_layer_call_fn_159194

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1575922
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
I
-__inference_activation_5_layer_call_fn_158852

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1574912
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_157480

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
כ
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158546

inputsA
'conv2d_8_conv2d_readvariableop_resource:@6
(conv2d_8_biasadd_readvariableop_resource:@;
-batch_normalization_6_readvariableop_resource:@=
/batch_normalization_6_readvariableop_1_resource:@L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@ 6
(conv2d_9_biasadd_readvariableop_resource: ;
-batch_normalization_7_readvariableop_resource: =
/batch_normalization_7_readvariableop_1_resource: L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource: :
&dense_9_matmul_readvariableop_resource:
??6
'dense_9_biasadd_readvariableop_resource:	?F
7batch_normalization_8_batchnorm_readvariableop_resource:	?J
;batch_normalization_8_batchnorm_mul_readvariableop_resource:	?H
9batch_normalization_8_batchnorm_readvariableop_1_resource:	?H
9batch_normalization_8_batchnorm_readvariableop_2_resource:	?;
'dense_10_matmul_readvariableop_resource:
??7
(dense_10_biasadd_readvariableop_resource:	?F
7batch_normalization_9_batchnorm_readvariableop_resource:	?J
;batch_normalization_9_batchnorm_mul_readvariableop_resource:	?H
9batch_normalization_9_batchnorm_readvariableop_1_resource:	?H
9batch_normalization_9_batchnorm_readvariableop_2_resource:	?:
'dense_11_matmul_readvariableop_resource:	?
6
(dense_11_biasadd_readvariableop_resource:

identity??5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?.batch_normalization_8/batchnorm/ReadVariableOp?0batch_normalization_8/batchnorm/ReadVariableOp_1?0batch_normalization_8/batchnorm/ReadVariableOp_2?2batch_normalization_8/batchnorm/mul/ReadVariableOp?.batch_normalization_9/batchnorm/ReadVariableOp?0batch_normalization_9/batchnorm/ReadVariableOp_1?0batch_normalization_9/batchnorm/ReadVariableOp_2?2batch_normalization_9/batchnorm/mul/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_8/BiasAdd?
activation_5/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_5/Relu?
max_pooling2d_4/MaxPoolMaxPoolactivation_5/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_4/MaxPool:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2(
&batch_normalization_6/FusedBatchNormV3?
dropout_6/IdentityIdentity*batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
dropout_6/Identity?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Ddropout_6/Identity:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_9/BiasAdd?
activation_6/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_6/Relu?
max_pooling2d_5/MaxPoolMaxPoolactivation_6/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPool?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_5/MaxPool:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2(
&batch_normalization_7/FusedBatchNormV3?
dropout_7/IdentityIdentity*batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
dropout_7/Identitys
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_3/Const?
flatten_3/ReshapeReshapedropout_7/Identity:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_3/Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulflatten_3/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_9/BiasAddq
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_9/Relu?
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp?
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_8/batchnorm/add/y?
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/add?
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/Rsqrt?
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOp?
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/mul?
%batch_normalization_8/batchnorm/mul_1Muldense_9/Relu:activations:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/mul_1?
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_1?
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/mul_2?
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_2?
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/sub?
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/add_1?
dropout_8/IdentityIdentity)batch_normalization_8/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
dropout_8/Identity?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldropout_8/Identity:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/BiasAddt
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_10/Relu?
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp?
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_9/batchnorm/add/y?
#batch_normalization_9/batchnorm/addAddV26batch_normalization_9/batchnorm/ReadVariableOp:value:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/add?
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/Rsqrt?
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOp?
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/mul?
%batch_normalization_9/batchnorm/mul_1Muldense_10/Relu:activations:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/mul_1?
0batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_1?
%batch_normalization_9/batchnorm/mul_2Mul8batch_normalization_9/batchnorm/ReadVariableOp_1:value:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/mul_2?
0batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_2?
#batch_normalization_9/batchnorm/subSub8batch_normalization_9/batchnorm/ReadVariableOp_2:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/sub?
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/add_1?
dropout_9/IdentityIdentity)batch_normalization_9/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
dropout_9/Identity?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_9/Identity:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_11/BiasAdd|
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_11/Softmax?	
IdentityIdentitydense_11/Softmax:softmax:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2d
0batch_normalization_9/batchnorm/ReadVariableOp_10batch_normalization_9/batchnorm/ReadVariableOp_12d
0batch_normalization_9/batchnorm/ReadVariableOp_20batch_normalization_9/batchnorm/ReadVariableOp_22h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_159311

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_9_layer_call_fn_159408

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_1573252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_157763

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_159438

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_156869

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_9_layer_call_fn_159448

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1577632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_7_layer_call_fn_157733
conv2d_8_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?


unknown_24:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_1576782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????
(
_user_specified_nameconv2d_8_input
?
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_157007

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_11_layer_call_fn_159468

inputs
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1576712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_157035

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_157526

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?]
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158114

inputs)
conv2d_8_158043:@
conv2d_8_158045:@*
batch_normalization_6_158050:@*
batch_normalization_6_158052:@*
batch_normalization_6_158054:@*
batch_normalization_6_158056:@)
conv2d_9_158060:@ 
conv2d_9_158062: *
batch_normalization_7_158067: *
batch_normalization_7_158069: *
batch_normalization_7_158071: *
batch_normalization_7_158073: "
dense_9_158078:
??
dense_9_158080:	?+
batch_normalization_8_158083:	?+
batch_normalization_8_158085:	?+
batch_normalization_8_158087:	?+
batch_normalization_8_158089:	?#
dense_10_158093:
??
dense_10_158095:	?+
batch_normalization_9_158098:	?+
batch_normalization_9_158100:	?+
batch_normalization_9_158102:	?+
batch_normalization_9_158104:	?"
dense_11_158108:	?

dense_11_158110:

identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_158043conv2d_8_158045*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1574802"
 conv2d_8/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1574912
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1568692!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_158050batch_normalization_6_158052batch_normalization_6_158054batch_normalization_6_158056*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1579542/
-batch_normalization_6/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_1579182#
!dropout_6/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_9_158060conv2d_9_158062*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1575382"
 conv2d_9/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1575492
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1570072!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_158067batch_normalization_7_158069batch_normalization_7_158071batch_normalization_7_158073*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1578712/
-batch_normalization_7/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_1578352#
!dropout_7/StatefulPartitionedCall?
flatten_3/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1575922
flatten_3/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_9_158078dense_9_158080*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1576052!
dense_9/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_8_158083batch_normalization_8_158085batch_normalization_8_158087batch_normalization_8_158089*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1572232/
-batch_normalization_8/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_1577962#
!dropout_8/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_10_158093dense_10_158095*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1576382"
 dense_10/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_9_158098batch_normalization_9_158100batch_normalization_9_158102batch_normalization_9_158104*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_1573852/
-batch_normalization_9/StatefulPartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1577632#
!dropout_9/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_11_158108dense_11_158110*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1576712"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_10_layer_call_and_return_conditional_losses_157638

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_157835

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_7_layer_call_fn_159178

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_1575842
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_8_layer_call_fn_159316

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_1576252
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_10_layer_call_and_return_conditional_losses_159332

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_157538

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159086

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?.
"__inference__traced_restore_159927
file_prefix:
 assignvariableop_conv2d_8_kernel:@.
 assignvariableop_1_conv2d_8_bias:@<
.assignvariableop_2_batch_normalization_6_gamma:@;
-assignvariableop_3_batch_normalization_6_beta:@B
4assignvariableop_4_batch_normalization_6_moving_mean:@F
8assignvariableop_5_batch_normalization_6_moving_variance:@<
"assignvariableop_6_conv2d_9_kernel:@ .
 assignvariableop_7_conv2d_9_bias: <
.assignvariableop_8_batch_normalization_7_gamma: ;
-assignvariableop_9_batch_normalization_7_beta: C
5assignvariableop_10_batch_normalization_7_moving_mean: G
9assignvariableop_11_batch_normalization_7_moving_variance: 6
"assignvariableop_12_dense_9_kernel:
??/
 assignvariableop_13_dense_9_bias:	?>
/assignvariableop_14_batch_normalization_8_gamma:	?=
.assignvariableop_15_batch_normalization_8_beta:	?D
5assignvariableop_16_batch_normalization_8_moving_mean:	?H
9assignvariableop_17_batch_normalization_8_moving_variance:	?7
#assignvariableop_18_dense_10_kernel:
??0
!assignvariableop_19_dense_10_bias:	?>
/assignvariableop_20_batch_normalization_9_gamma:	?=
.assignvariableop_21_batch_normalization_9_beta:	?D
5assignvariableop_22_batch_normalization_9_moving_mean:	?H
9assignvariableop_23_batch_normalization_9_moving_variance:	?6
#assignvariableop_24_dense_11_kernel:	?
/
!assignvariableop_25_dense_11_bias:
'
assignvariableop_26_adam_iter:	 )
assignvariableop_27_adam_beta_1: )
assignvariableop_28_adam_beta_2: (
assignvariableop_29_adam_decay: 0
&assignvariableop_30_adam_learning_rate: #
assignvariableop_31_total: #
assignvariableop_32_count: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: D
*assignvariableop_35_adam_conv2d_8_kernel_m:@6
(assignvariableop_36_adam_conv2d_8_bias_m:@D
6assignvariableop_37_adam_batch_normalization_6_gamma_m:@C
5assignvariableop_38_adam_batch_normalization_6_beta_m:@D
*assignvariableop_39_adam_conv2d_9_kernel_m:@ 6
(assignvariableop_40_adam_conv2d_9_bias_m: D
6assignvariableop_41_adam_batch_normalization_7_gamma_m: C
5assignvariableop_42_adam_batch_normalization_7_beta_m: =
)assignvariableop_43_adam_dense_9_kernel_m:
??6
'assignvariableop_44_adam_dense_9_bias_m:	?E
6assignvariableop_45_adam_batch_normalization_8_gamma_m:	?D
5assignvariableop_46_adam_batch_normalization_8_beta_m:	?>
*assignvariableop_47_adam_dense_10_kernel_m:
??7
(assignvariableop_48_adam_dense_10_bias_m:	?E
6assignvariableop_49_adam_batch_normalization_9_gamma_m:	?D
5assignvariableop_50_adam_batch_normalization_9_beta_m:	?=
*assignvariableop_51_adam_dense_11_kernel_m:	?
6
(assignvariableop_52_adam_dense_11_bias_m:
D
*assignvariableop_53_adam_conv2d_8_kernel_v:@6
(assignvariableop_54_adam_conv2d_8_bias_v:@D
6assignvariableop_55_adam_batch_normalization_6_gamma_v:@C
5assignvariableop_56_adam_batch_normalization_6_beta_v:@D
*assignvariableop_57_adam_conv2d_9_kernel_v:@ 6
(assignvariableop_58_adam_conv2d_9_bias_v: D
6assignvariableop_59_adam_batch_normalization_7_gamma_v: C
5assignvariableop_60_adam_batch_normalization_7_beta_v: =
)assignvariableop_61_adam_dense_9_kernel_v:
??6
'assignvariableop_62_adam_dense_9_bias_v:	?E
6assignvariableop_63_adam_batch_normalization_8_gamma_v:	?D
5assignvariableop_64_adam_batch_normalization_8_beta_v:	?>
*assignvariableop_65_adam_dense_10_kernel_v:
??7
(assignvariableop_66_adam_dense_10_bias_v:	?E
6assignvariableop_67_adam_batch_normalization_9_gamma_v:	?D
5assignvariableop_68_adam_batch_normalization_9_beta_v:	?=
*assignvariableop_69_adam_dense_11_kernel_v:	?
6
(assignvariableop_70_adam_dense_11_bias_v:

identity_72??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_8?AssignVariableOp_9?'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?&
value?&B?&HB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?
value?B?HB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_6_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_6_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_6_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_6_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_7_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_7_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_7_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_7_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_9_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_9_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_8_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_8_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_8_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_8_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_10_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_10_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_9_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_9_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_9_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_9_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_11_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_11_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_decayIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_learning_rateIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_8_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_8_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_batch_normalization_6_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp5assignvariableop_38_adam_batch_normalization_6_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_conv2d_9_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_conv2d_9_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_batch_normalization_7_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adam_batch_normalization_7_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_9_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_9_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_batch_normalization_8_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp5assignvariableop_46_adam_batch_normalization_8_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_10_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_10_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_batch_normalization_9_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp5assignvariableop_50_adam_batch_normalization_9_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_11_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_11_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_8_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_8_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_6_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_batch_normalization_6_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_conv2d_9_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_conv2d_9_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_batch_normalization_7_gamma_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_batch_normalization_7_beta_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_9_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_9_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_batch_normalization_8_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_batch_normalization_8_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_10_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_10_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_batch_normalization_9_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp5assignvariableop_68_adam_batch_normalization_9_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_11_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_11_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_709
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_71Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_71?
Identity_72IdentityIdentity_71:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_72"#
identity_72Identity_72:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_156897

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_159027

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:????????? 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_159156

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1578712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_157918

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_157549

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:????????? 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_10_layer_call_fn_159341

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1576382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?V
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158300
conv2d_8_input)
conv2d_8_158229:@
conv2d_8_158231:@*
batch_normalization_6_158236:@*
batch_normalization_6_158238:@*
batch_normalization_6_158240:@*
batch_normalization_6_158242:@)
conv2d_9_158246:@ 
conv2d_9_158248: *
batch_normalization_7_158253: *
batch_normalization_7_158255: *
batch_normalization_7_158257: *
batch_normalization_7_158259: "
dense_9_158264:
??
dense_9_158266:	?+
batch_normalization_8_158269:	?+
batch_normalization_8_158271:	?+
batch_normalization_8_158273:	?+
batch_normalization_8_158275:	?#
dense_10_158279:
??
dense_10_158281:	?+
batch_normalization_9_158284:	?+
batch_normalization_9_158286:	?+
batch_normalization_9_158288:	?+
batch_normalization_9_158290:	?"
dense_11_158294:	?

dense_11_158296:

identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_158229conv2d_8_158231*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1574802"
 conv2d_8/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1574912
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1568692!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_158236batch_normalization_6_158238batch_normalization_6_158240batch_normalization_6_158242*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1575112/
-batch_normalization_6/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_1575262
dropout_6/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_9_158246conv2d_9_158248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1575382"
 conv2d_9/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1575492
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1570072!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_158253batch_normalization_7_158255batch_normalization_7_158257batch_normalization_7_158259*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1575692/
-batch_normalization_7/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_1575842
dropout_7/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1575922
flatten_3/PartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_9_158264dense_9_158266*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1576052!
dense_9/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_8_158269batch_normalization_8_158271batch_normalization_8_158273batch_normalization_8_158275*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1571632/
-batch_normalization_8/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_1576252
dropout_8/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_10_158279dense_10_158281*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1576382"
 dense_10/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_9_158284batch_normalization_9_158286batch_normalization_9_158288batch_normalization_9_158290*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_1573252/
-batch_normalization_9/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1576582
dropout_9/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_11_158294dense_11_158296*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1576712"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????
(
_user_specified_nameconv2d_8_input
?
?
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_159361

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_158993

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
F
*__inference_dropout_6_layer_call_fn_158998

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_1575262
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_157163

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_5_layer_call_fn_157013

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1570072
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_159189

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_8_layer_call_fn_159294

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1572232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_157325

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158924

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159050

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_157871

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_9_layer_call_fn_159443

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1576582
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_9_layer_call_fn_159214

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1576052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_156863
conv2d_8_inputN
4sequential_7_conv2d_8_conv2d_readvariableop_resource:@C
5sequential_7_conv2d_8_biasadd_readvariableop_resource:@H
:sequential_7_batch_normalization_6_readvariableop_resource:@J
<sequential_7_batch_normalization_6_readvariableop_1_resource:@Y
Ksequential_7_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:@[
Msequential_7_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:@N
4sequential_7_conv2d_9_conv2d_readvariableop_resource:@ C
5sequential_7_conv2d_9_biasadd_readvariableop_resource: H
:sequential_7_batch_normalization_7_readvariableop_resource: J
<sequential_7_batch_normalization_7_readvariableop_1_resource: Y
Ksequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource: [
Msequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource: G
3sequential_7_dense_9_matmul_readvariableop_resource:
??C
4sequential_7_dense_9_biasadd_readvariableop_resource:	?S
Dsequential_7_batch_normalization_8_batchnorm_readvariableop_resource:	?W
Hsequential_7_batch_normalization_8_batchnorm_mul_readvariableop_resource:	?U
Fsequential_7_batch_normalization_8_batchnorm_readvariableop_1_resource:	?U
Fsequential_7_batch_normalization_8_batchnorm_readvariableop_2_resource:	?H
4sequential_7_dense_10_matmul_readvariableop_resource:
??D
5sequential_7_dense_10_biasadd_readvariableop_resource:	?S
Dsequential_7_batch_normalization_9_batchnorm_readvariableop_resource:	?W
Hsequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resource:	?U
Fsequential_7_batch_normalization_9_batchnorm_readvariableop_1_resource:	?U
Fsequential_7_batch_normalization_9_batchnorm_readvariableop_2_resource:	?G
4sequential_7_dense_11_matmul_readvariableop_resource:	?
C
5sequential_7_dense_11_biasadd_readvariableop_resource:

identity??Bsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Dsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?1sequential_7/batch_normalization_6/ReadVariableOp?3sequential_7/batch_normalization_6/ReadVariableOp_1?Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?1sequential_7/batch_normalization_7/ReadVariableOp?3sequential_7/batch_normalization_7/ReadVariableOp_1?;sequential_7/batch_normalization_8/batchnorm/ReadVariableOp?=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_1?=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_2??sequential_7/batch_normalization_8/batchnorm/mul/ReadVariableOp?;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp?=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1?=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2??sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?,sequential_7/conv2d_8/BiasAdd/ReadVariableOp?+sequential_7/conv2d_8/Conv2D/ReadVariableOp?,sequential_7/conv2d_9/BiasAdd/ReadVariableOp?+sequential_7/conv2d_9/Conv2D/ReadVariableOp?,sequential_7/dense_10/BiasAdd/ReadVariableOp?+sequential_7/dense_10/MatMul/ReadVariableOp?,sequential_7/dense_11/BiasAdd/ReadVariableOp?+sequential_7/dense_11/MatMul/ReadVariableOp?+sequential_7/dense_9/BiasAdd/ReadVariableOp?*sequential_7/dense_9/MatMul/ReadVariableOp?
+sequential_7/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_7_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02-
+sequential_7/conv2d_8/Conv2D/ReadVariableOp?
sequential_7/conv2d_8/Conv2DConv2Dconv2d_8_input3sequential_7/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
sequential_7/conv2d_8/Conv2D?
,sequential_7/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_7/conv2d_8/BiasAdd/ReadVariableOp?
sequential_7/conv2d_8/BiasAddBiasAdd%sequential_7/conv2d_8/Conv2D:output:04sequential_7/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
sequential_7/conv2d_8/BiasAdd?
sequential_7/activation_5/ReluRelu&sequential_7/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_7/activation_5/Relu?
$sequential_7/max_pooling2d_4/MaxPoolMaxPool,sequential_7/activation_5/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2&
$sequential_7/max_pooling2d_4/MaxPool?
1sequential_7/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_7_batch_normalization_6_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_7/batch_normalization_6/ReadVariableOp?
3sequential_7/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_7_batch_normalization_6_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_7/batch_normalization_6/ReadVariableOp_1?
Bsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_7_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Dsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_7_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
3sequential_7/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3-sequential_7/max_pooling2d_4/MaxPool:output:09sequential_7/batch_normalization_6/ReadVariableOp:value:0;sequential_7/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 25
3sequential_7/batch_normalization_6/FusedBatchNormV3?
sequential_7/dropout_6/IdentityIdentity7sequential_7/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2!
sequential_7/dropout_6/Identity?
+sequential_7/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_7_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02-
+sequential_7/conv2d_9/Conv2D/ReadVariableOp?
sequential_7/conv2d_9/Conv2DConv2D(sequential_7/dropout_6/Identity:output:03sequential_7/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
sequential_7/conv2d_9/Conv2D?
,sequential_7/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_7/conv2d_9/BiasAdd/ReadVariableOp?
sequential_7/conv2d_9/BiasAddBiasAdd%sequential_7/conv2d_9/Conv2D:output:04sequential_7/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
sequential_7/conv2d_9/BiasAdd?
sequential_7/activation_6/ReluRelu&sequential_7/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
sequential_7/activation_6/Relu?
$sequential_7/max_pooling2d_5/MaxPoolMaxPool,sequential_7/activation_6/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2&
$sequential_7/max_pooling2d_5/MaxPool?
1sequential_7/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype023
1sequential_7/batch_normalization_7/ReadVariableOp?
3sequential_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_7/batch_normalization_7/ReadVariableOp_1?
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02D
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
3sequential_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3-sequential_7/max_pooling2d_5/MaxPool:output:09sequential_7/batch_normalization_7/ReadVariableOp:value:0;sequential_7/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 25
3sequential_7/batch_normalization_7/FusedBatchNormV3?
sequential_7/dropout_7/IdentityIdentity7sequential_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2!
sequential_7/dropout_7/Identity?
sequential_7/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
sequential_7/flatten_3/Const?
sequential_7/flatten_3/ReshapeReshape(sequential_7/dropout_7/Identity:output:0%sequential_7/flatten_3/Const:output:0*
T0*(
_output_shapes
:??????????2 
sequential_7/flatten_3/Reshape?
*sequential_7/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_7_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_7/dense_9/MatMul/ReadVariableOp?
sequential_7/dense_9/MatMulMatMul'sequential_7/flatten_3/Reshape:output:02sequential_7/dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_9/MatMul?
+sequential_7/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_7_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_7/dense_9/BiasAdd/ReadVariableOp?
sequential_7/dense_9/BiasAddBiasAdd%sequential_7/dense_9/MatMul:product:03sequential_7/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_9/BiasAdd?
sequential_7/dense_9/ReluRelu%sequential_7/dense_9/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_9/Relu?
;sequential_7/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOpDsequential_7_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_7/batch_normalization_8/batchnorm/ReadVariableOp?
2sequential_7/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_7/batch_normalization_8/batchnorm/add/y?
0sequential_7/batch_normalization_8/batchnorm/addAddV2Csequential_7/batch_normalization_8/batchnorm/ReadVariableOp:value:0;sequential_7/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_8/batchnorm/add?
2sequential_7/batch_normalization_8/batchnorm/RsqrtRsqrt4sequential_7/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_8/batchnorm/Rsqrt?
?sequential_7/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_7_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_7/batch_normalization_8/batchnorm/mul/ReadVariableOp?
0sequential_7/batch_normalization_8/batchnorm/mulMul6sequential_7/batch_normalization_8/batchnorm/Rsqrt:y:0Gsequential_7/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_8/batchnorm/mul?
2sequential_7/batch_normalization_8/batchnorm/mul_1Mul'sequential_7/dense_9/Relu:activations:04sequential_7/batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_8/batchnorm/mul_1?
=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_7_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_1?
2sequential_7/batch_normalization_8/batchnorm/mul_2MulEsequential_7/batch_normalization_8/batchnorm/ReadVariableOp_1:value:04sequential_7/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_8/batchnorm/mul_2?
=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_7_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_2?
0sequential_7/batch_normalization_8/batchnorm/subSubEsequential_7/batch_normalization_8/batchnorm/ReadVariableOp_2:value:06sequential_7/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_8/batchnorm/sub?
2sequential_7/batch_normalization_8/batchnorm/add_1AddV26sequential_7/batch_normalization_8/batchnorm/mul_1:z:04sequential_7/batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_8/batchnorm/add_1?
sequential_7/dropout_8/IdentityIdentity6sequential_7/batch_normalization_8/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2!
sequential_7/dropout_8/Identity?
+sequential_7/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_10/MatMul/ReadVariableOp?
sequential_7/dense_10/MatMulMatMul(sequential_7/dropout_8/Identity:output:03sequential_7/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_10/MatMul?
,sequential_7/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_10/BiasAdd/ReadVariableOp?
sequential_7/dense_10/BiasAddBiasAdd&sequential_7/dense_10/MatMul:product:04sequential_7/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_10/BiasAdd?
sequential_7/dense_10/ReluRelu&sequential_7/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_10/Relu?
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOpDsequential_7_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp?
2sequential_7/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_7/batch_normalization_9/batchnorm/add/y?
0sequential_7/batch_normalization_9/batchnorm/addAddV2Csequential_7/batch_normalization_9/batchnorm/ReadVariableOp:value:0;sequential_7/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/add?
2sequential_7/batch_normalization_9/batchnorm/RsqrtRsqrt4sequential_7/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_9/batchnorm/Rsqrt?
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?
0sequential_7/batch_normalization_9/batchnorm/mulMul6sequential_7/batch_normalization_9/batchnorm/Rsqrt:y:0Gsequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/mul?
2sequential_7/batch_normalization_9/batchnorm/mul_1Mul(sequential_7/dense_10/Relu:activations:04sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_9/batchnorm/mul_1?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_7_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1?
2sequential_7/batch_normalization_9/batchnorm/mul_2MulEsequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1:value:04sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_9/batchnorm/mul_2?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_7_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2?
0sequential_7/batch_normalization_9/batchnorm/subSubEsequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2:value:06sequential_7/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/sub?
2sequential_7/batch_normalization_9/batchnorm/add_1AddV26sequential_7/batch_normalization_9/batchnorm/mul_1:z:04sequential_7/batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_9/batchnorm/add_1?
sequential_7/dropout_9/IdentityIdentity6sequential_7/batch_normalization_9/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2!
sequential_7/dropout_9/Identity?
+sequential_7/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_11_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02-
+sequential_7/dense_11/MatMul/ReadVariableOp?
sequential_7/dense_11/MatMulMatMul(sequential_7/dropout_9/Identity:output:03sequential_7/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_7/dense_11/MatMul?
,sequential_7/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_7/dense_11/BiasAdd/ReadVariableOp?
sequential_7/dense_11/BiasAddBiasAdd&sequential_7/dense_11/MatMul:product:04sequential_7/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_7/dense_11/BiasAdd?
sequential_7/dense_11/SoftmaxSoftmax&sequential_7/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential_7/dense_11/Softmax?
IdentityIdentity'sequential_7/dense_11/Softmax:softmax:0C^sequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_7/batch_normalization_6/ReadVariableOp4^sequential_7/batch_normalization_6/ReadVariableOp_1C^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_7/batch_normalization_7/ReadVariableOp4^sequential_7/batch_normalization_7/ReadVariableOp_1<^sequential_7/batch_normalization_8/batchnorm/ReadVariableOp>^sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_1>^sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_2@^sequential_7/batch_normalization_8/batchnorm/mul/ReadVariableOp<^sequential_7/batch_normalization_9/batchnorm/ReadVariableOp>^sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1>^sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2@^sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp-^sequential_7/conv2d_8/BiasAdd/ReadVariableOp,^sequential_7/conv2d_8/Conv2D/ReadVariableOp-^sequential_7/conv2d_9/BiasAdd/ReadVariableOp,^sequential_7/conv2d_9/Conv2D/ReadVariableOp-^sequential_7/dense_10/BiasAdd/ReadVariableOp,^sequential_7/dense_10/MatMul/ReadVariableOp-^sequential_7/dense_11/BiasAdd/ReadVariableOp,^sequential_7/dense_11/MatMul/ReadVariableOp,^sequential_7/dense_9/BiasAdd/ReadVariableOp+^sequential_7/dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Bsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Dsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_7/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12f
1sequential_7/batch_normalization_6/ReadVariableOp1sequential_7/batch_normalization_6/ReadVariableOp2j
3sequential_7/batch_normalization_6/ReadVariableOp_13sequential_7/batch_normalization_6/ReadVariableOp_12?
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_7/batch_normalization_7/ReadVariableOp1sequential_7/batch_normalization_7/ReadVariableOp2j
3sequential_7/batch_normalization_7/ReadVariableOp_13sequential_7/batch_normalization_7/ReadVariableOp_12z
;sequential_7/batch_normalization_8/batchnorm/ReadVariableOp;sequential_7/batch_normalization_8/batchnorm/ReadVariableOp2~
=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_1=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_12~
=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_2=sequential_7/batch_normalization_8/batchnorm/ReadVariableOp_22?
?sequential_7/batch_normalization_8/batchnorm/mul/ReadVariableOp?sequential_7/batch_normalization_8/batchnorm/mul/ReadVariableOp2z
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp2~
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_12~
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_22?
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp2\
,sequential_7/conv2d_8/BiasAdd/ReadVariableOp,sequential_7/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_7/conv2d_8/Conv2D/ReadVariableOp+sequential_7/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_7/conv2d_9/BiasAdd/ReadVariableOp,sequential_7/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_7/conv2d_9/Conv2D/ReadVariableOp+sequential_7/conv2d_9/Conv2D/ReadVariableOp2\
,sequential_7/dense_10/BiasAdd/ReadVariableOp,sequential_7/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_10/MatMul/ReadVariableOp+sequential_7/dense_10/MatMul/ReadVariableOp2\
,sequential_7/dense_11/BiasAdd/ReadVariableOp,sequential_7/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_11/MatMul/ReadVariableOp+sequential_7/dense_11/MatMul/ReadVariableOp2Z
+sequential_7/dense_9/BiasAdd/ReadVariableOp+sequential_7/dense_9/BiasAdd/ReadVariableOp2X
*sequential_7/dense_9/MatMul/ReadVariableOp*sequential_7/dense_9/MatMul/ReadVariableOp:_ [
/
_output_shapes
:?????????
(
_user_specified_nameconv2d_8_input
?
c
*__inference_dropout_7_layer_call_fn_159183

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_1578352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
? 
__inference__traced_save_159704
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop3
/savev2_adam_conv2d_9_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop3
/savev2_adam_conv2d_9_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?&
value?&B?&HB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?
value?B?HB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop<savev2_adam_batch_normalization_9_beta_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop<savev2_adam_batch_normalization_9_beta_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *V
dtypesL
J2H	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@:@:@:@:@ : : : : : :
??:?:?:?:?:?:
??:?:?:?:?:?:	?
:
: : : : : : : : : :@:@:@:@:@ : : : :
??:?:?:?:
??:?:?:?:	?
:
:@:@:@:@:@ : : : :
??:?:?:?:
??:?:?:?:	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :,$(
&
_output_shapes
:@: %

_output_shapes
:@: &

_output_shapes
:@: '

_output_shapes
:@:,((
&
_output_shapes
:@ : )

_output_shapes
: : *

_output_shapes
: : +

_output_shapes
: :&,"
 
_output_shapes
:
??:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:&0"
 
_output_shapes
:
??:!1

_output_shapes	
:?:!2

_output_shapes	
:?:!3

_output_shapes	
:?:%4!

_output_shapes
:	?
: 5

_output_shapes
:
:,6(
&
_output_shapes
:@: 7

_output_shapes
:@: 8

_output_shapes
:@: 9

_output_shapes
:@:,:(
&
_output_shapes
:@ : ;

_output_shapes
: : <

_output_shapes
: : =

_output_shapes
: :&>"
 
_output_shapes
:
??:!?

_output_shapes	
:?:!@

_output_shapes	
:?:!A

_output_shapes	
:?:&B"
 
_output_shapes
:
??:!C

_output_shapes	
:?:!D

_output_shapes	
:?:!E

_output_shapes	
:?:%F!

_output_shapes
:	?
: G

_output_shapes
:
:H

_output_shapes
: 
?

?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_159013

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159104

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_158976

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1579542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_9_layer_call_fn_159022

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1575382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158888

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_158439
conv2d_8_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?


unknown_24:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_1568632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????
(
_user_specified_nameconv2d_8_input
??
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158709

inputsA
'conv2d_8_conv2d_readvariableop_resource:@6
(conv2d_8_biasadd_readvariableop_resource:@;
-batch_normalization_6_readvariableop_resource:@=
/batch_normalization_6_readvariableop_1_resource:@L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@ 6
(conv2d_9_biasadd_readvariableop_resource: ;
-batch_normalization_7_readvariableop_resource: =
/batch_normalization_7_readvariableop_1_resource: L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource: :
&dense_9_matmul_readvariableop_resource:
??6
'dense_9_biasadd_readvariableop_resource:	?L
=batch_normalization_8_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_8_assignmovingavg_1_readvariableop_resource:	?J
;batch_normalization_8_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_8_batchnorm_readvariableop_resource:	?;
'dense_10_matmul_readvariableop_resource:
??7
(dense_10_biasadd_readvariableop_resource:	?L
=batch_normalization_9_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_9_assignmovingavg_1_readvariableop_resource:	?J
;batch_normalization_9_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_9_batchnorm_readvariableop_resource:	?:
'dense_11_matmul_readvariableop_resource:	?
6
(dense_11_biasadd_readvariableop_resource:

identity??$batch_normalization_6/AssignNewValue?&batch_normalization_6/AssignNewValue_1?5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?$batch_normalization_7/AssignNewValue?&batch_normalization_7/AssignNewValue_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?%batch_normalization_8/AssignMovingAvg?4batch_normalization_8/AssignMovingAvg/ReadVariableOp?'batch_normalization_8/AssignMovingAvg_1?6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_8/batchnorm/ReadVariableOp?2batch_normalization_8/batchnorm/mul/ReadVariableOp?%batch_normalization_9/AssignMovingAvg?4batch_normalization_9/AssignMovingAvg/ReadVariableOp?'batch_normalization_9/AssignMovingAvg_1?6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_9/batchnorm/ReadVariableOp?2batch_normalization_9/batchnorm/mul/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_8/BiasAdd?
activation_5/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_5/Relu?
max_pooling2d_4/MaxPoolMaxPoolactivation_5/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_4/MaxPool:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_6/FusedBatchNormV3?
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValue?
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_6/AssignNewValue_1w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/dropout/Const?
dropout_6/dropout/MulMul*batch_normalization_6/FusedBatchNormV3:y:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_6/dropout/Mul?
dropout_6/dropout/ShapeShape*batch_normalization_6/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_6/dropout/Mul_1?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Ddropout_6/dropout/Mul_1:z:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_9/BiasAdd?
activation_6/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_6/Relu?
max_pooling2d_5/MaxPoolMaxPoolactivation_6/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPool?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_5/MaxPool:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_7/FusedBatchNormV3?
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_7/AssignNewValue?
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_7/AssignNewValue_1w
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMul*batch_normalization_7/FusedBatchNormV3:y:0 dropout_7/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_7/dropout/Mul?
dropout_7/dropout/ShapeShape*batch_normalization_7/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_7/dropout/Mul_1s
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_3/Const?
flatten_3/ReshapeReshapedropout_7/dropout/Mul_1:z:0flatten_3/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_3/Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulflatten_3/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_9/BiasAddq
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_9/Relu?
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_8/moments/mean/reduction_indices?
"batch_normalization_8/moments/meanMeandense_9/Relu:activations:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_8/moments/mean?
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_8/moments/StopGradient?
/batch_normalization_8/moments/SquaredDifferenceSquaredDifferencedense_9/Relu:activations:03batch_normalization_8/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_8/moments/SquaredDifference?
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_8/moments/variance/reduction_indices?
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_8/moments/variance?
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_8/moments/Squeeze?
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_8/moments/Squeeze_1?
+batch_normalization_8/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_8/AssignMovingAvg/decay?
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_8/AssignMovingAvg/ReadVariableOp?
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_8/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_8/AssignMovingAvg/sub?
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_8/AssignMovingAvg/mul?
%batch_normalization_8/AssignMovingAvgAssignSubVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_8/AssignMovingAvg?
-batch_normalization_8/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_8/AssignMovingAvg_1/decay?
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_8/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_8/AssignMovingAvg_1/sub?
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_8/AssignMovingAvg_1/mul?
'batch_normalization_8/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_8/AssignMovingAvg_1?
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_8/batchnorm/add/y?
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/add?
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/Rsqrt?
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOp?
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/mul?
%batch_normalization_8/batchnorm/mul_1Muldense_9/Relu:activations:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/mul_1?
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/mul_2?
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp?
#batch_normalization_8/batchnorm/subSub6batch_normalization_8/batchnorm/ReadVariableOp:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/sub?
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/add_1w
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_8/dropout/Const?
dropout_8/dropout/MulMul)batch_normalization_8/batchnorm/add_1:z:0 dropout_8/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_8/dropout/Mul?
dropout_8/dropout/ShapeShape)batch_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_8/dropout/random_uniform/RandomUniform?
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_8/dropout/GreaterEqual/y?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_8/dropout/GreaterEqual?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_8/dropout/Cast?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_8/dropout/Mul_1?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldropout_8/dropout/Mul_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/BiasAddt
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_10/Relu?
4batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_9/moments/mean/reduction_indices?
"batch_normalization_9/moments/meanMeandense_10/Relu:activations:0=batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_9/moments/mean?
*batch_normalization_9/moments/StopGradientStopGradient+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_9/moments/StopGradient?
/batch_normalization_9/moments/SquaredDifferenceSquaredDifferencedense_10/Relu:activations:03batch_normalization_9/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_9/moments/SquaredDifference?
8batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_9/moments/variance/reduction_indices?
&batch_normalization_9/moments/varianceMean3batch_normalization_9/moments/SquaredDifference:z:0Abatch_normalization_9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_9/moments/variance?
%batch_normalization_9/moments/SqueezeSqueeze+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_9/moments/Squeeze?
'batch_normalization_9/moments/Squeeze_1Squeeze/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_9/moments/Squeeze_1?
+batch_normalization_9/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_9/AssignMovingAvg/decay?
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_9/AssignMovingAvg/ReadVariableOp?
)batch_normalization_9/AssignMovingAvg/subSub<batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_9/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_9/AssignMovingAvg/sub?
)batch_normalization_9/AssignMovingAvg/mulMul-batch_normalization_9/AssignMovingAvg/sub:z:04batch_normalization_9/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_9/AssignMovingAvg/mul?
%batch_normalization_9/AssignMovingAvgAssignSubVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource-batch_normalization_9/AssignMovingAvg/mul:z:05^batch_normalization_9/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_9/AssignMovingAvg?
-batch_normalization_9/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_9/AssignMovingAvg_1/decay?
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_9/AssignMovingAvg_1/subSub>batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_9/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_9/AssignMovingAvg_1/sub?
+batch_normalization_9/AssignMovingAvg_1/mulMul/batch_normalization_9/AssignMovingAvg_1/sub:z:06batch_normalization_9/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_9/AssignMovingAvg_1/mul?
'batch_normalization_9/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource/batch_normalization_9/AssignMovingAvg_1/mul:z:07^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_9/AssignMovingAvg_1?
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_9/batchnorm/add/y?
#batch_normalization_9/batchnorm/addAddV20batch_normalization_9/moments/Squeeze_1:output:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/add?
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/Rsqrt?
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOp?
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/mul?
%batch_normalization_9/batchnorm/mul_1Muldense_10/Relu:activations:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/mul_1?
%batch_normalization_9/batchnorm/mul_2Mul.batch_normalization_9/moments/Squeeze:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/mul_2?
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp?
#batch_normalization_9/batchnorm/subSub6batch_normalization_9/batchnorm/ReadVariableOp:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/sub?
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/add_1w
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_9/dropout/Const?
dropout_9/dropout/MulMul)batch_normalization_9/batchnorm/add_1:z:0 dropout_9/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_9/dropout/Mul?
dropout_9/dropout/ShapeShape)batch_normalization_9/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_9/dropout/random_uniform/RandomUniform?
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_9/dropout/GreaterEqual/y?
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_9/dropout/GreaterEqual?
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_9/dropout/Cast?
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_9/dropout/Mul_1?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_9/dropout/Mul_1:z:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_11/BiasAdd|
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_11/Softmax?
IdentityIdentitydense_11/Softmax:softmax:0%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12N
%batch_normalization_8/AssignMovingAvg%batch_normalization_8/AssignMovingAvg2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_1'batch_normalization_8/AssignMovingAvg_12p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2N
%batch_normalization_9/AssignMovingAvg%batch_normalization_9/AssignMovingAvg2l
4batch_normalization_9/AssignMovingAvg/ReadVariableOp4batch_normalization_9/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_9/AssignMovingAvg_1'batch_normalization_9/AssignMovingAvg_12p
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_11_layer_call_and_return_conditional_losses_157671

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_7_layer_call_fn_158766

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?


unknown_24:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_1576782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_157625

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_159130

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1570792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?*
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_157223

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158906

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_157954

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_157796

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_159117

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1570352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_4_layer_call_fn_156875

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1568692
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_158981

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_157569

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
C__inference_dense_9_layer_call_and_return_conditional_losses_159205

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_159299

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159068

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_9_layer_call_fn_159421

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_1573852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_157385

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Q
conv2d_8_input?
 serving_default_conv2d_8_input:0?????????<
dense_110
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
??
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?{
_tf_keras_sequential?{{"name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_8_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 45, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "conv2d_8_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_8_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 10}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 11}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 15}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 16}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 21}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 22}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 26}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 31}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 32}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 35}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 37}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 39}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 40}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 41}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 44}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 47}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?
trainable_variables
 	variables
!regularization_losses
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}
?
#trainable_variables
$	variables
%regularization_losses
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 48}}
?

'axis
	(gamma
)beta
*moving_mean
+moving_variance
,trainable_variables
-	variables
.regularization_losses
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 13, 64]}}
?
0trainable_variables
1	variables
2regularization_losses
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 11}
?


4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 13, 64]}}
?
:trainable_variables
;	variables
<regularization_losses
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 15}
?
>trainable_variables
?	variables
@regularization_losses
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 51}}
?

Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 5, 32]}}
?
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 22}
?
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 53}}
?

Skernel
Tbias
Utrainable_variables
V	variables
Wregularization_losses
X	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 800}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 800]}}
?

Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance
^trainable_variables
_	variables
`regularization_losses
a	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}, "shared_object_id": 55}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
btrainable_variables
c	variables
dregularization_losses
e	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 32}
?

fkernel
gbias
htrainable_variables
i	variables
jregularization_losses
k	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

laxis
	mgamma
nbeta
omoving_mean
pmoving_variance
qtrainable_variables
r	variables
sregularization_losses
t	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 37}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 39}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 40, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
utrainable_variables
v	variables
wregularization_losses
x	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 41}
?

ykernel
zbias
{trainable_variables
|	variables
}regularization_losses
~	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 58}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
iter
?beta_1
?beta_2

?decay
?learning_ratem?m?(m?)m?4m?5m?Cm?Dm?Sm?Tm?Zm?[m?fm?gm?mm?nm?ym?zm?v?v?(v?)v?4v?5v?Cv?Dv?Sv?Tv?Zv?[v?fv?gv?mv?nv?yv?zv?"
	optimizer
?
0
1
(2
)3
44
55
C6
D7
S8
T9
Z10
[11
f12
g13
m14
n15
y16
z17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
(2
)3
*4
+5
46
57
C8
D9
E10
F11
S12
T13
Z14
[15
\16
]17
f18
g19
m20
n21
o22
p23
y24
z25"
trackable_list_wrapper
?
trainable_variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
?metrics
	variables
?layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
):'@2conv2d_8/kernel
:@2conv2d_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
 	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
!regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
#trainable_variables
$	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
%regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_6/gamma
(:&@2batch_normalization_6/beta
1:/@ (2!batch_normalization_6/moving_mean
5:3@ (2%batch_normalization_6/moving_variance
.
(0
)1"
trackable_list_wrapper
<
(0
)1
*2
+3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
,trainable_variables
-	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
.regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
0trainable_variables
1	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
2regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@ 2conv2d_9/kernel
: 2conv2d_9/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6trainable_variables
7	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
8regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
:trainable_variables
;	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
<regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
>trainable_variables
?	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
@regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_7/gamma
(:& 2batch_normalization_7/beta
1:/  (2!batch_normalization_7/moving_mean
5:3  (2%batch_normalization_7/moving_variance
.
C0
D1"
trackable_list_wrapper
<
C0
D1
E2
F3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Gtrainable_variables
H	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Iregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ktrainable_variables
L	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Mregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Otrainable_variables
P	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Qregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_9/kernel
:?2dense_9/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Utrainable_variables
V	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
Wregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_8/gamma
):'?2batch_normalization_8/beta
2:0? (2!batch_normalization_8/moving_mean
6:4? (2%batch_normalization_8/moving_variance
.
Z0
[1"
trackable_list_wrapper
<
Z0
[1
\2
]3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^trainable_variables
_	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
`regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
btrainable_variables
c	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
dregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_10/kernel
:?2dense_10/bias
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
htrainable_variables
i	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
jregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_9/gamma
):'?2batch_normalization_9/beta
2:0? (2!batch_normalization_9/moving_mean
6:4? (2%batch_normalization_9/moving_variance
.
m0
n1"
trackable_list_wrapper
<
m0
n1
o2
p3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qtrainable_variables
r	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
sregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
utrainable_variables
v	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
wregularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?
2dense_11/kernel
:
2dense_11/bias
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
{trainable_variables
|	variables
?layers
?non_trainable_variables
 ?layer_regularization_losses
}regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
X
*0
+1
E2
F3
\4
]5
o6
p7"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 59}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 47}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,@2Adam/conv2d_8/kernel/m
 :@2Adam/conv2d_8/bias/m
.:,@2"Adam/batch_normalization_6/gamma/m
-:+@2!Adam/batch_normalization_6/beta/m
.:,@ 2Adam/conv2d_9/kernel/m
 : 2Adam/conv2d_9/bias/m
.:, 2"Adam/batch_normalization_7/gamma/m
-:+ 2!Adam/batch_normalization_7/beta/m
':%
??2Adam/dense_9/kernel/m
 :?2Adam/dense_9/bias/m
/:-?2"Adam/batch_normalization_8/gamma/m
.:,?2!Adam/batch_normalization_8/beta/m
(:&
??2Adam/dense_10/kernel/m
!:?2Adam/dense_10/bias/m
/:-?2"Adam/batch_normalization_9/gamma/m
.:,?2!Adam/batch_normalization_9/beta/m
':%	?
2Adam/dense_11/kernel/m
 :
2Adam/dense_11/bias/m
.:,@2Adam/conv2d_8/kernel/v
 :@2Adam/conv2d_8/bias/v
.:,@2"Adam/batch_normalization_6/gamma/v
-:+@2!Adam/batch_normalization_6/beta/v
.:,@ 2Adam/conv2d_9/kernel/v
 : 2Adam/conv2d_9/bias/v
.:, 2"Adam/batch_normalization_7/gamma/v
-:+ 2!Adam/batch_normalization_7/beta/v
':%
??2Adam/dense_9/kernel/v
 :?2Adam/dense_9/bias/v
/:-?2"Adam/batch_normalization_8/gamma/v
.:,?2!Adam/batch_normalization_8/beta/v
(:&
??2Adam/dense_10/kernel/v
!:?2Adam/dense_10/bias/v
/:-?2"Adam/batch_normalization_9/gamma/v
.:,?2!Adam/batch_normalization_9/beta/v
':%	?
2Adam/dense_11/kernel/v
 :
2Adam/dense_11/bias/v
?2?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158546
H__inference_sequential_7_layer_call_and_return_conditional_losses_158709
H__inference_sequential_7_layer_call_and_return_conditional_losses_158300
H__inference_sequential_7_layer_call_and_return_conditional_losses_158374?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_156863?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *5?2
0?-
conv2d_8_input?????????
?2?
-__inference_sequential_7_layer_call_fn_157733
-__inference_sequential_7_layer_call_fn_158766
-__inference_sequential_7_layer_call_fn_158823
-__inference_sequential_7_layer_call_fn_158226?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_158833?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_8_layer_call_fn_158842?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_activation_5_layer_call_and_return_conditional_losses_158847?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_activation_5_layer_call_fn_158852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_156869?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_4_layer_call_fn_156875?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158870
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158888
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158906
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158924?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_6_layer_call_fn_158937
6__inference_batch_normalization_6_layer_call_fn_158950
6__inference_batch_normalization_6_layer_call_fn_158963
6__inference_batch_normalization_6_layer_call_fn_158976?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_6_layer_call_and_return_conditional_losses_158981
E__inference_dropout_6_layer_call_and_return_conditional_losses_158993?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_6_layer_call_fn_158998
*__inference_dropout_6_layer_call_fn_159003?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_159013?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_9_layer_call_fn_159022?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_activation_6_layer_call_and_return_conditional_losses_159027?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_activation_6_layer_call_fn_159032?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_157007?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_5_layer_call_fn_157013?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159050
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159068
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159086
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159104?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_7_layer_call_fn_159117
6__inference_batch_normalization_7_layer_call_fn_159130
6__inference_batch_normalization_7_layer_call_fn_159143
6__inference_batch_normalization_7_layer_call_fn_159156?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_7_layer_call_and_return_conditional_losses_159161
E__inference_dropout_7_layer_call_and_return_conditional_losses_159173?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_7_layer_call_fn_159178
*__inference_dropout_7_layer_call_fn_159183?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_flatten_3_layer_call_and_return_conditional_losses_159189?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_3_layer_call_fn_159194?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_9_layer_call_and_return_conditional_losses_159205?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_9_layer_call_fn_159214?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_159234
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_159268?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_8_layer_call_fn_159281
6__inference_batch_normalization_8_layer_call_fn_159294?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_8_layer_call_and_return_conditional_losses_159299
E__inference_dropout_8_layer_call_and_return_conditional_losses_159311?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_8_layer_call_fn_159316
*__inference_dropout_8_layer_call_fn_159321?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_10_layer_call_and_return_conditional_losses_159332?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_10_layer_call_fn_159341?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_159361
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_159395?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_9_layer_call_fn_159408
6__inference_batch_normalization_9_layer_call_fn_159421?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_9_layer_call_and_return_conditional_losses_159426
E__inference_dropout_9_layer_call_and_return_conditional_losses_159438?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_9_layer_call_fn_159443
*__inference_dropout_9_layer_call_fn_159448?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_11_layer_call_and_return_conditional_losses_159459?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_11_layer_call_fn_159468?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_158439conv2d_8_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_156863?()*+45CDEFST]Z\[fgpmonyz??<
5?2
0?-
conv2d_8_input?????????
? "3?0
.
dense_11"?
dense_11?????????
?
H__inference_activation_5_layer_call_and_return_conditional_losses_158847h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
-__inference_activation_5_layer_call_fn_158852[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
H__inference_activation_6_layer_call_and_return_conditional_losses_159027h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
-__inference_activation_6_layer_call_fn_159032[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158870?()*+M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158888?()*+M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158906r()*+;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_158924r()*+;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
6__inference_batch_normalization_6_layer_call_fn_158937?()*+M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
6__inference_batch_normalization_6_layer_call_fn_158950?()*+M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
6__inference_batch_normalization_6_layer_call_fn_158963e()*+;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
6__inference_batch_normalization_6_layer_call_fn_158976e()*+;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159050?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159068?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159086rCDEF;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_159104rCDEF;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
6__inference_batch_normalization_7_layer_call_fn_159117?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
6__inference_batch_normalization_7_layer_call_fn_159130?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
6__inference_batch_normalization_7_layer_call_fn_159143eCDEF;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
6__inference_batch_normalization_7_layer_call_fn_159156eCDEF;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_159234d]Z\[4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_159268d\]Z[4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
6__inference_batch_normalization_8_layer_call_fn_159281W]Z\[4?1
*?'
!?
inputs??????????
p 
? "????????????
6__inference_batch_normalization_8_layer_call_fn_159294W\]Z[4?1
*?'
!?
inputs??????????
p
? "????????????
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_159361dpmon4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_159395dopmn4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
6__inference_batch_normalization_9_layer_call_fn_159408Wpmon4?1
*?'
!?
inputs??????????
p 
? "????????????
6__inference_batch_normalization_9_layer_call_fn_159421Wopmn4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_conv2d_8_layer_call_and_return_conditional_losses_158833l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????@
? ?
)__inference_conv2d_8_layer_call_fn_158842_7?4
-?*
(?%
inputs?????????
? " ??????????@?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_159013l457?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0????????? 
? ?
)__inference_conv2d_9_layer_call_fn_159022_457?4
-?*
(?%
inputs?????????@
? " ?????????? ?
D__inference_dense_10_layer_call_and_return_conditional_losses_159332^fg0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_10_layer_call_fn_159341Qfg0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_11_layer_call_and_return_conditional_losses_159459]yz0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? }
)__inference_dense_11_layer_call_fn_159468Pyz0?-
&?#
!?
inputs??????????
? "??????????
?
C__inference_dense_9_layer_call_and_return_conditional_losses_159205^ST0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_9_layer_call_fn_159214QST0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dropout_6_layer_call_and_return_conditional_losses_158981l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
E__inference_dropout_6_layer_call_and_return_conditional_losses_158993l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
*__inference_dropout_6_layer_call_fn_158998_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
*__inference_dropout_6_layer_call_fn_159003_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
E__inference_dropout_7_layer_call_and_return_conditional_losses_159161l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
E__inference_dropout_7_layer_call_and_return_conditional_losses_159173l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
*__inference_dropout_7_layer_call_fn_159178_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
*__inference_dropout_7_layer_call_fn_159183_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
E__inference_dropout_8_layer_call_and_return_conditional_losses_159299^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_8_layer_call_and_return_conditional_losses_159311^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_8_layer_call_fn_159316Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_8_layer_call_fn_159321Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_dropout_9_layer_call_and_return_conditional_losses_159426^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_9_layer_call_and_return_conditional_losses_159438^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_9_layer_call_fn_159443Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_9_layer_call_fn_159448Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_flatten_3_layer_call_and_return_conditional_losses_159189a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? ?
*__inference_flatten_3_layer_call_fn_159194T7?4
-?*
(?%
inputs????????? 
? "????????????
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_156869?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_4_layer_call_fn_156875?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_157007?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_5_layer_call_fn_157013?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_7_layer_call_and_return_conditional_losses_158300?()*+45CDEFST]Z\[fgpmonyzG?D
=?:
0?-
conv2d_8_input?????????
p 

 
? "%?"
?
0?????????

? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158374?()*+45CDEFST\]Z[fgopmnyzG?D
=?:
0?-
conv2d_8_input?????????
p

 
? "%?"
?
0?????????

? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158546?()*+45CDEFST]Z\[fgpmonyz??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_158709?()*+45CDEFST\]Z[fgopmnyz??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
-__inference_sequential_7_layer_call_fn_157733()*+45CDEFST]Z\[fgpmonyzG?D
=?:
0?-
conv2d_8_input?????????
p 

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_158226()*+45CDEFST\]Z[fgopmnyzG?D
=?:
0?-
conv2d_8_input?????????
p

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_158766w()*+45CDEFST]Z\[fgpmonyz??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_158823w()*+45CDEFST\]Z[fgopmnyz??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
$__inference_signature_wrapper_158439?()*+45CDEFST]Z\[fgpmonyzQ?N
? 
G?D
B
conv2d_8_input0?-
conv2d_8_input?????????"3?0
.
dense_11"?
dense_11?????????
