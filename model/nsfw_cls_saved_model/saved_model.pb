²
Þ
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
ì
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	


FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%·Ñ8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.12.02v1.12.0-0-ga6d8ffae09µ
q
input_tensorPlaceholder*
dtype0*(
_output_shapes
:*
shape:
J
ConstConst*
_output_shapes
: *
valueB
 Btest*
dtype0
M
Const_1Const*
valueB Btrain*
dtype0*
_output_shapes
: 
L
Const_2Const*
dtype0*
_output_shapes
: *
valueB
 Btest
?
EqualEqualConstConst_1*
T0*
_output_shapes
: 
×
Fnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
Â
Ensfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ä
Gnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*
valueB
 *Ìá>*
dtype0*
_output_shapes
: 
º
Pnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/shape*
T0*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*
seed2 *
dtype0*&
_output_shapes
:*

seed 
Ï
Dnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/mulMulPnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/TruncatedNormalGnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*&
_output_shapes
:
½
@nsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normalAddDnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/mulEnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*&
_output_shapes
:
ß
#nsfw_cls_model/conv_0/conv_0/conv/W
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*
	container *
shape:
­
*nsfw_cls_model/conv_0/conv_0/conv/W/AssignAssign#nsfw_cls_model/conv_0/conv_0/conv/W@nsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal*
use_locking(*
T0*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*
validate_shape(*&
_output_shapes
:
Â
(nsfw_cls_model/conv_0/conv_0/conv/W/readIdentity#nsfw_cls_model/conv_0/conv_0/conv/W*
T0*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*&
_output_shapes
:

(nsfw_cls_model/conv_0/conv_0/conv/Conv2DConv2Dinput_tensor(nsfw_cls_model/conv_0/conv_0/conv/W/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:*
	dilations


&nsfw_cls_model/conv_0/conv_0/conv/convIdentity(nsfw_cls_model/conv_0/conv_0/conv/Conv2D*
T0*(
_output_shapes
:
½
6nsfw_cls_model/conv_0/conv_0/bn/gamma/Initializer/onesConst*8
_class.
,*loc:@nsfw_cls_model/conv_0/conv_0/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
Ë
%nsfw_cls_model/conv_0/conv_0/bn/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *8
_class.
,*loc:@nsfw_cls_model/conv_0/conv_0/bn/gamma

,nsfw_cls_model/conv_0/conv_0/bn/gamma/AssignAssign%nsfw_cls_model/conv_0/conv_0/bn/gamma6nsfw_cls_model/conv_0/conv_0/bn/gamma/Initializer/ones*
T0*8
_class.
,*loc:@nsfw_cls_model/conv_0/conv_0/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
¼
*nsfw_cls_model/conv_0/conv_0/bn/gamma/readIdentity%nsfw_cls_model/conv_0/conv_0/bn/gamma*
T0*8
_class.
,*loc:@nsfw_cls_model/conv_0/conv_0/bn/gamma*
_output_shapes
:
¼
6nsfw_cls_model/conv_0/conv_0/bn/beta/Initializer/zerosConst*7
_class-
+)loc:@nsfw_cls_model/conv_0/conv_0/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
É
$nsfw_cls_model/conv_0/conv_0/bn/beta
VariableV2*
shared_name *7
_class-
+)loc:@nsfw_cls_model/conv_0/conv_0/bn/beta*
	container *
shape:*
dtype0*
_output_shapes
:

+nsfw_cls_model/conv_0/conv_0/bn/beta/AssignAssign$nsfw_cls_model/conv_0/conv_0/bn/beta6nsfw_cls_model/conv_0/conv_0/bn/beta/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@nsfw_cls_model/conv_0/conv_0/bn/beta*
validate_shape(*
_output_shapes
:
¹
)nsfw_cls_model/conv_0/conv_0/bn/beta/readIdentity$nsfw_cls_model/conv_0/conv_0/bn/beta*
T0*7
_class-
+)loc:@nsfw_cls_model/conv_0/conv_0/bn/beta*
_output_shapes
:
Ê
=nsfw_cls_model/conv_0/conv_0/bn/moving_mean/Initializer/zerosConst*>
_class4
20loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
×
+nsfw_cls_model/conv_0/conv_0/bn/moving_mean
VariableV2*
_output_shapes
:*
shared_name *>
_class4
20loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_mean*
	container *
shape:*
dtype0
¶
2nsfw_cls_model/conv_0/conv_0/bn/moving_mean/AssignAssign+nsfw_cls_model/conv_0/conv_0/bn/moving_mean=nsfw_cls_model/conv_0/conv_0/bn/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
Î
0nsfw_cls_model/conv_0/conv_0/bn/moving_mean/readIdentity+nsfw_cls_model/conv_0/conv_0/bn/moving_mean*>
_class4
20loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_mean*
_output_shapes
:*
T0
Ñ
@nsfw_cls_model/conv_0/conv_0/bn/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:*B
_class8
64loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_variance*
valueB*  ?
ß
/nsfw_cls_model/conv_0/conv_0/bn/moving_variance
VariableV2*B
_class8
64loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Å
6nsfw_cls_model/conv_0/conv_0/bn/moving_variance/AssignAssign/nsfw_cls_model/conv_0/conv_0/bn/moving_variance@nsfw_cls_model/conv_0/conv_0/bn/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*B
_class8
64loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_variance
Ú
4nsfw_cls_model/conv_0/conv_0/bn/moving_variance/readIdentity/nsfw_cls_model/conv_0/conv_0/bn/moving_variance*
T0*B
_class8
64loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_variance*
_output_shapes
:
®
.nsfw_cls_model/conv_0/conv_0/bn/FusedBatchNormFusedBatchNorm&nsfw_cls_model/conv_0/conv_0/conv/conv*nsfw_cls_model/conv_0/conv_0/bn/gamma/read)nsfw_cls_model/conv_0/conv_0/bn/beta/read0nsfw_cls_model/conv_0/conv_0/bn/moving_mean/read4nsfw_cls_model/conv_0/conv_0/bn/moving_variance/read*@
_output_shapes.
,:::::*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
j
%nsfw_cls_model/conv_0/conv_0/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 

!nsfw_cls_model/conv_0/conv_0/reluRelu.nsfw_cls_model/conv_0/conv_0/bn/FusedBatchNorm*(
_output_shapes
:*
T0
ñ
Snsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*%
valueB"            *
dtype0*
_output_shapes
:
Ü
Rnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*
valueB
 *    *
dtype0
Þ
Tnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*
valueB
 *	>*
dtype0
á
]nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/shape*

seed *
T0*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*
seed2 *
dtype0*&
_output_shapes
:

Qnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/mulMul]nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/TruncatedNormalTnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W
ñ
Mnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normalAddQnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/mulRnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*&
_output_shapes
:
ù
0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*
	container *
shape:
á
7nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/AssignAssign0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/WMnsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*
validate_shape(*&
_output_shapes
:
é
5nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/readIdentity0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W*&
_output_shapes
:*
T0*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W
º
5nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/Conv2DConv2D!nsfw_cls_model/conv_0/conv_0/relu5nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/read*(
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
«
5nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/conv_1Identity5nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/Conv2D*(
_output_shapes
:*
T0
á
Hnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma
VariableV2*J
_class@
><loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
å
>nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:
ò
<nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
í
6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta*
	container *
shape:
â
=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:
ï
;nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta
î
Onsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape:
þ
Dnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean
õ
Rnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:

Ansfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape:

Hnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

Fnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance

@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm5nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/conv_1<nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/read*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*(
_output_shapes
:
û
Xnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*%
valueB"            
æ
Wnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0
è
Ynsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*
seed2 

Vnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W

Rnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:

5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W
VariableV2*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
õ
<nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:
ø
:nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0
³
8nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/Conv2D*
T0*(
_output_shapes
:
²
nsfw_cls_model/conv_1_0/addAdd8nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/conv!nsfw_cls_model/conv_0/conv_0/relu*
T0*(
_output_shapes
:
á
Hnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma*
	container 
å
>nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:
ò
<nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma
à
Hnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta*
valueB*    
í
6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta
â
=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:
ï
;nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:
î
Onsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
þ
Dnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean
õ
Rnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:

Ansfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance

Hnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

Fnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:
ý
@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_1_0/add<nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/read*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/FusedBatchNorm*
T0*(
_output_shapes
:
û
Xnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*%
valueB"            
æ
Wnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
valueB
 *    
è
Ynsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
seed2 *
dtype0*&
_output_shapes
:*

seed 

Vnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W

Rnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:

5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W
VariableV2*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
õ
<nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:
ø
:nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0
³
8nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/Conv2D*
T0*(
_output_shapes
:
á
Hnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma
VariableV2*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
å
>nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(
ò
<nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
í
6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta
â
=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:
ï
;nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta
î
Onsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean
þ
Dnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:
õ
Rnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:

Ansfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance*
	container 

Hnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

Fnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:*
T0

@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( 
|
7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/ConstConst*
_output_shapes
: *
valueB
 *w¾?*
dtype0
°
3nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*(
_output_shapes
:
û
Xnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*%
valueB"            *
dtype0
æ
Wnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*&
_output_shapes
:*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*
seed2 *
dtype0

Vnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:

Rnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:

5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W
VariableV2*&
_output_shapes
:*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*
	container *
shape:*
dtype0
õ
<nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:
ø
:nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W
Ö
:nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/read*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides

³
8nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/Conv2D*
T0*(
_output_shapes
:
¬
nsfw_cls_model/conv_1_1/addAdd8nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_1_0/add*(
_output_shapes
:*
T0
á
Hnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma
å
>nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma
ò
<nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
_output_shapes
:*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta*
valueB*    *
dtype0
í
6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta*
	container *
shape:
â
=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(
ï
;nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:
î
Onsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:
þ
Dnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(

Bnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:
õ
Rnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*
_output_shapes
:*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance*
valueB*  ?*
dtype0

Ansfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
_output_shapes
:*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape:*
dtype0

Hnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

Fnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:
ý
@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_1_1/add<nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( 
|
7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/FusedBatchNorm*(
_output_shapes
:*
T0
û
Xnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W*%
valueB"            *
dtype0
æ
Wnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W

Vnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W

Rnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W

5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W
õ
<nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:
ø
:nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:
³
8nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/Conv2D*(
_output_shapes
:*
T0
á
Hnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma
VariableV2*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:*
dtype0
å
>nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:
ò
<nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
í
6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta
VariableV2*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta*
	container *
shape:*
dtype0
â
=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:*
use_locking(
ï
;nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:
î
Onsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean
þ
Dnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:
õ
Rnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*
_output_shapes
:*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance*
valueB*  ?*
dtype0

Ansfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape:

Hnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

Fnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:

@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( 
|
7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/FusedBatchNorm*(
_output_shapes
:*
T0
û
Xnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
seed2 

Vnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W

Rnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:

5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W
VariableV2*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
	container *
shape:*
dtype0*&
_output_shapes
:
õ
<nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
ø
:nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/read*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
³
8nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/Conv2D*(
_output_shapes
:*
T0
¬
nsfw_cls_model/conv_1_2/addAdd8nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_1_1/add*(
_output_shapes
:*
T0
á
Hnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma
å
>nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(
ò
<nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
_output_shapes
:*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta*
valueB*    *
dtype0
í
6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta
â
=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:
ï
;nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:
î
Onsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:*
dtype0
þ
Dnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean

Bnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean
õ
Rnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:

Ansfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:

Hnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:

Fnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:
ý
@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_1_2/add<nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/read*@
_output_shapes.
,:::::*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
|
7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/ConstConst*
_output_shapes
: *
valueB
 *w¾?*
dtype0
°
3nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/FusedBatchNorm*(
_output_shapes
:*
T0
û
Xnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*%
valueB"            
æ
Wnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
valueB
 *    
è
Ynsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
seed2 

Vnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:

Rnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W

5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W
VariableV2*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
õ
<nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
validate_shape(
ø
:nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/read*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
³
8nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/Conv2D*
T0*(
_output_shapes
:
á
Hnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:
å
>nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma
ò
<nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
í
6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta
â
=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ï
;nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta
î
Onsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape:
þ
Dnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:*
T0
õ
Rnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:

Ansfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape:

Hnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

Fnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance

@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/read*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/FusedBatchNorm*(
_output_shapes
:*
T0
û
Xnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*
seed2 

Vnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W

Rnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W

5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*
	container *
shape:
õ
<nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:*
use_locking(
ø
:nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:
³
8nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/Conv2D*(
_output_shapes
:*
T0
¬
nsfw_cls_model/conv_1_3/addAdd8nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_1_2/add*
T0*(
_output_shapes
:
á
Hnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma*
	container 
å
>nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma
ò
<nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma
à
Hnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
í
6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta*
	container *
shape:
â
=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta
ï
;nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:
î
Onsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:
þ
Dnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:*
T0
õ
Rnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:

Ansfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 

Hnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

Fnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance
ý
@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_1_3/add<nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/read*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/FusedBatchNorm*
T0*(
_output_shapes
:
û
Xnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
seed2 

Vnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:*
T0

Rnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:

5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
	container 
õ
<nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:
ø
:nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/read*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
³
8nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/Conv2D*
T0*(
_output_shapes
:
á
Hnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:
å
>nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:
ò
<nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
í
6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta
VariableV2*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta*
	container *
shape:*
dtype0*
_output_shapes
:
â
=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:
ï
;nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta
î
Onsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean
þ
Dnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:
õ
Rnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:

Ansfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape:

Hnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

Fnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance

@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/read*@
_output_shapes.
,:::::*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
|
7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/ConstConst*
_output_shapes
: *
valueB
 *w¾?*
dtype0
°
3nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*(
_output_shapes
:
û
Xnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
valueB
 *    
è
Ynsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0

Vnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:*
T0

Rnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:

5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W
VariableV2*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
	container *
shape:*
dtype0*&
_output_shapes
:
õ
<nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
validate_shape(
ø
:nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:
Ö
:nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0
³
8nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/Conv2D*(
_output_shapes
:*
T0
¬
nsfw_cls_model/conv_1_4/addAdd8nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_1_3/add*(
_output_shapes
:*
T0
á
Hnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ï
7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma*
	container *
shape:
å
>nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:
ò
<nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:
à
Hnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta*
valueB*    *
dtype0*
_output_shapes
:
í
6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta
VariableV2*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
â
=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta
ï
;nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:*
T0
î
Onsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
û
=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
þ
Dnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

Bnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:*
T0
õ
Rnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance*
valueB*  ?

Ansfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 

Hnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

Fnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:
ý
@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_1_4/add<nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,:::::*
is_training( 
|
7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/FusedBatchNorm*(
_output_shapes
:*
T0
û
Xnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*%
valueB"             *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
valueB
 *	>*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: *

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
seed2 

Vnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
: *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W

Rnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*&
_output_shapes
: 

5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
	container *
shape: 
õ
<nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
: 
ø
:nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*&
_output_shapes
: 
Ö
:nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/read*(
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
³
8nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/Conv2D*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes
: *J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma*
valueB *  ?
ï
7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma
VariableV2*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
å
>nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
ò
<nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
: 
à
Hnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta*
valueB *    *
dtype0*
_output_shapes
: 
í
6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta*
	container 
â
=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(
ï
;nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta*
_output_shapes
: 
î
Onsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
þ
Dnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: 

Bnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
: 
õ
Rnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape: 

Hnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance

Fnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
: 

@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( 
|
7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*(
_output_shapes
: 
û
Xnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*%
valueB"              *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*
valueB
 *    
è
Ynsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:  *

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W

Vnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  *
T0

Rnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W

5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W
VariableV2*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W
õ
<nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  *
use_locking(
ø
:nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  
Ö
:nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/read*
paddingSAME*(
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
³
8nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/Conv2D*(
_output_shapes
: *
T0
Î
 nsfw_cls_model/conv_2_0/avg_poolAvgPoolnsfw_cls_model/conv_1_4/add*
paddingVALID*(
_output_shapes
:*
T0*
data_formatNHWC*
strides
*
ksize


$nsfw_cls_model/conv_2_0/Pad/paddingsConst*9
value0B."                               *
dtype0*
_output_shapes

:
®
nsfw_cls_model/conv_2_0/PadPad nsfw_cls_model/conv_2_0/avg_pool$nsfw_cls_model/conv_2_0/Pad/paddings*
T0*
	Tpaddings0*(
_output_shapes
: 
¬
nsfw_cls_model/conv_2_0/addAdd8nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_2_0/Pad*(
_output_shapes
: *
T0
á
Hnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes
: *J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma*
valueB *  ?
ï
7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma
VariableV2*
_output_shapes
: *
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma*
	container *
shape: *
dtype0
å
>nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 
ò
<nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
: *
T0
à
Hnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta*
valueB *    *
dtype0*
_output_shapes
: 
í
6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta*
	container *
shape: 
â
=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: 
ï
;nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta*
_output_shapes
: *
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta
î
Onsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean*
	container 
þ
Dnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

Bnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
: 
õ
Rnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 

Hnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

Fnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
: 
ý
@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_2_0/add<nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/read*@
_output_shapes.
,: : : : : *
is_training( *
epsilon%o:*
T0*
data_formatNHWC
|
7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/ConstConst*
_output_shapes
: *
valueB
 *w¾?*
dtype0
°
3nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/FusedBatchNorm*(
_output_shapes
: *
T0
û
Xnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*%
valueB"              
æ
Wnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*
seed2 *
dtype0*&
_output_shapes
:  *

seed 

Vnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  

Rnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  

5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*
	container *
shape:  
õ
<nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W
ø
:nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W
Ö
:nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/read*(
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
³
8nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/Conv2D*(
_output_shapes
: *
T0
á
Hnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
ï
7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma
å
>nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
_output_shapes
: *
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(
ò
<nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
: *
T0
à
Hnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
_output_shapes
: *I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta*
valueB *    *
dtype0
í
6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta*
	container 
â
=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 
ï
;nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta*
_output_shapes
: 
î
Onsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean
þ
Dnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: 

Bnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
: *
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean
õ
Rnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 

Hnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: 

Fnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
: 

@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/read*
T0*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *w¾?
°
3nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*(
_output_shapes
: 
û
Xnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*%
valueB"              *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0
è
Ynsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*&
_output_shapes
:  *

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
seed2 *
dtype0

Vnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  

Rnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W

5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
	container *
shape:  
õ
<nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  
ø
:nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  
Ö
:nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
: 
³
8nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/Conv2D*
T0*(
_output_shapes
: 
¬
nsfw_cls_model/conv_2_1/addAdd8nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_2_0/add*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
ï
7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma*
	container *
shape: 
å
>nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
ò
<nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
: *
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma
à
Hnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
: *I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta*
valueB *    
í
6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta*
	container *
shape: 
â
=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: 
ï
;nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta*
_output_shapes
: *
T0
î
Onsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape: 
þ
Dnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

Bnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
: 
õ
Rnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape: 

Hnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(

Fnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
: *
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance
ý
@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_2_1/add<nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/read*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( *
epsilon%o:*
T0
|
7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/FusedBatchNorm*(
_output_shapes
: *
T0
û
Xnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*%
valueB"              *
dtype0
æ
Wnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*
seed2 *
dtype0*&
_output_shapes
:  

Vnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  

Rnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  

5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W
VariableV2*
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*
	container 
õ
<nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W
ø
:nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  
Ö
:nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
: 
³
8nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/Conv2D*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*
_output_shapes
: *J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma*
valueB *  ?*
dtype0
ï
7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma
VariableV2*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
å
>nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: 
ò
<nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
: *
T0
à
Hnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
: *I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta*
valueB *    
í
6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta
VariableV2*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
â
=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 
ï
;nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta*
_output_shapes
: 
î
Onsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape: 
þ
Dnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: 

Bnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
: 
õ
Rnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 

Hnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

Fnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
: 

@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( 
|
7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/FusedBatchNorm*(
_output_shapes
: *
T0
û
Xnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*%
valueB"              *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*&
_output_shapes
:  *

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
seed2 *
dtype0

Vnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W

Rnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  

5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
	container *
shape:  
õ
<nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  
ø
:nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  
Ö
:nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/read*
paddingSAME*(
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
³
8nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/Conv2D*(
_output_shapes
: *
T0
¬
nsfw_cls_model/conv_2_2/addAdd8nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_2_1/add*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
ï
7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma*
	container *
shape: 
å
>nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 
ò
<nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
: 
à
Hnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
: *I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta*
valueB *    
í
6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta*
	container *
shape: 
â
=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta
ï
;nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta*
_output_shapes
: 
î
Onsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean
þ
Dnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(

Bnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
: 
õ
Rnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*
_output_shapes
: *T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance*
valueB *  ?*
dtype0

Ansfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 

Hnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: 

Fnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
: 
ý
@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_2_2/add<nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( 
|
7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/ConstConst*
_output_shapes
: *
valueB
 *w¾?*
dtype0
°
3nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/FusedBatchNorm*
T0*(
_output_shapes
: 
û
Xnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*%
valueB"              
æ
Wnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*
seed2 

Vnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  

Rnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W

5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*
	container *
shape:  
õ
<nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  
ø
:nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  *
T0
Ö
:nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
: 
³
8nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/Conv2D*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
ï
7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma*
	container *
shape: 
å
>nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
_output_shapes
: *
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(
ò
<nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
: *
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma
à
Hnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
_output_shapes
: *I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta*
valueB *    *
dtype0
í
6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta
VariableV2*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta*
	container *
shape: *
dtype0
â
=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(
ï
;nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta*
_output_shapes
: 
î
Onsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
þ
Dnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: 

Bnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
: *
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean
õ
Rnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance

Hnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

Fnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
: *
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance

@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/read*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( *
epsilon%o:*
T0
|
7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*(
_output_shapes
: 
û
Xnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*%
valueB"              *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
seed2 *
dtype0*&
_output_shapes
:  *

seed 

Vnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W

Rnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W

5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W
VariableV2*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
	container *
shape:  *
dtype0*&
_output_shapes
:  
õ
<nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*&
_output_shapes
:  *
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
validate_shape(
ø
:nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  
Ö
:nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
: 
³
8nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/Conv2D*(
_output_shapes
: *
T0
¬
nsfw_cls_model/conv_2_3/addAdd8nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_2_2/add*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
ï
7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma
VariableV2*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
å
>nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 
ò
<nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
: *
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma
à
Hnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
_output_shapes
: *I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta*
valueB *    *
dtype0
í
6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta*
	container 
â
=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta*
validate_shape(
ï
;nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta*
_output_shapes
: 
î
Onsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape: 
þ
Dnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

Bnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
: 
õ
Rnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 

Hnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

Fnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
: *
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance
ý
@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_2_3/add<nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( 
|
7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/FusedBatchNorm*
T0*(
_output_shapes
: 
û
Xnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*%
valueB"              *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*
valueB
 *Â=*
dtype0
ð
bnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*
seed2 

Vnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W

Rnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  

5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*
	container *
shape:  
õ
<nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  
ø
:nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W
Ö
:nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/read*
paddingSAME*(
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
³
8nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/Conv2D*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes
: *J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma*
valueB *  ?
ï
7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma
VariableV2*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
å
>nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma
ò
<nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
: 
à
Hnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
: *I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta*
valueB *    
í
6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta
VariableV2*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
â
=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 
ï
;nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta*
_output_shapes
: *
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta
î
Onsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean*
	container 
þ
Dnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean

Bnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
: *
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean
õ
Rnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 

Hnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: 

Fnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
: *
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance

@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( 
|
7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/FusedBatchNorm*(
_output_shapes
: *
T0
û
Xnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*%
valueB"              *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*
seed2 

Vnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  *
T0

Rnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  

5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W
VariableV2*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W
õ
<nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  
ø
:nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:  *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W
Ö
:nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/read*
paddingSAME*(
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
³
8nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/Conv2D*(
_output_shapes
: *
T0
¬
nsfw_cls_model/conv_2_4/addAdd8nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_2_3/add*
T0*(
_output_shapes
: 
á
Hnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*
_output_shapes
: *J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma*
valueB *  ?*
dtype0
ï
7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma
VariableV2*
_output_shapes
: *
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma*
	container *
shape: *
dtype0
å
>nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 
ò
<nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
: 
à
Hnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta*
valueB *    *
dtype0*
_output_shapes
: 
í
6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta*
	container *
shape: 
â
=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(
ï
;nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta*
_output_shapes
: 
î
Onsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
û
=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
þ
Dnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

Bnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
: *
T0
õ
Rnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 

Ansfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance*
	container 

Hnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: 

Fnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
: 
ý
@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_2_4/add<nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/read*
T0*
data_formatNHWC*@
_output_shapes.
,: : : : : *
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
°
3nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/FusedBatchNorm*(
_output_shapes
: *
T0
û
Xnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*%
valueB"          @   *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*
valueB
 *    
è
Ynsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*
valueB
 *Â=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*
seed2 

Vnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*&
_output_shapes
: @*
T0

Rnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*&
_output_shapes
: @

5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*
	container *
shape: @
õ
<nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W
ø
:nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*&
_output_shapes
: @
Ô
:nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/read*&
_output_shapes
:@@@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
±
8nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/Conv2D*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ï
7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:@
å
>nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@
ò
<nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:@
à
Hnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
_output_shapes
:@*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta*
valueB@*    *
dtype0
í
6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta
â
=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta
ï
;nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:@
î
Onsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
û
=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
þ
Dnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

Bnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape:@

Hnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(

Fnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:@

@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/read*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
|
7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/FusedBatchNorm*&
_output_shapes
:@@@*
T0
û
Xnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*%
valueB"      @   @   *
dtype0
æ
Wnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0
è
Ynsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*
valueB
 *=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*&
_output_shapes
:@@*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*
seed2 *
dtype0

Vnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@*
T0

Rnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@

5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*
	container *
shape:@@
õ
<nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@
ø
:nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@
Ô
:nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/read*
paddingSAME*&
_output_shapes
:@@@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
±
8nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/Conv2D*&
_output_shapes
:@@@*
T0
Ì
 nsfw_cls_model/conv_3_0/avg_poolAvgPoolnsfw_cls_model/conv_2_4/add*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*&
_output_shapes
:@@ *
T0

$nsfw_cls_model/conv_3_0/Pad/paddingsConst*9
value0B."                               *
dtype0*
_output_shapes

:
¬
nsfw_cls_model/conv_3_0/PadPad nsfw_cls_model/conv_3_0/avg_pool$nsfw_cls_model/conv_3_0/Pad/paddings*
	Tpaddings0*&
_output_shapes
:@@@*
T0
ª
nsfw_cls_model/conv_3_0/addAdd8nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_3_0/Pad*&
_output_shapes
:@@@*
T0
á
Hnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*
_output_shapes
:@*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma*
valueB@*  ?*
dtype0
ï
7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma
VariableV2*
_output_shapes
:@*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma*
	container *
shape:@*
dtype0
å
>nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma
ò
<nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:@
à
Hnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta*
valueB@*    
í
6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta*
	container 
â
=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ï
;nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:@*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta
î
Onsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
û
=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
þ
Dnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

Bnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@

Hnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

Fnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:@
û
@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_3_0/add<nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/read*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( *
epsilon%o:*
T0
|
7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/FusedBatchNorm*
T0*&
_output_shapes
:@@@
û
Xnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*
valueB
 *    
è
Ynsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*
valueB
 *=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*
seed2 

Vnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@

Rnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@

5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W
VariableV2*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*
	container *
shape:@@*
dtype0
õ
<nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
ø
:nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@
Ô
:nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@@
±
8nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/Conv2D*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma*
valueB@*  ?
ï
7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma
VariableV2*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
å
>nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
ò
<nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:@
à
Hnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta*
valueB@*    
í
6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta*
	container *
shape:@
â
=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ï
;nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:@*
T0
î
Onsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*
_output_shapes
:@*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean*
valueB@*    *
dtype0
û
=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
þ
Dnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

Bnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance

Hnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

Fnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:@

@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/read*
T0*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/FusedBatchNorm*&
_output_shapes
:@@@*
T0
û
Xnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*
valueB
 *=
ð
bnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*
seed2 

Vnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@*
T0

Rnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@

5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W
õ
<nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W
ø
:nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@
Ô
:nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@@*
	dilations

±
8nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/Conv2D*&
_output_shapes
:@@@*
T0
ª
nsfw_cls_model/conv_3_1/addAdd8nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_3_0/add*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ï
7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma*
	container *
shape:@
å
>nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@
ò
<nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:@*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma
à
Hnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta*
valueB@*    *
dtype0*
_output_shapes
:@
í
6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta
VariableV2*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
â
=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(
ï
;nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:@
î
Onsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*
_output_shapes
:@*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean*
valueB@*    *
dtype0
û
=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:@
þ
Dnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(

Bnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape:@

Hnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@

Fnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:@
û
@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_3_1/add<nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/read*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( *
epsilon%o:*
T0
|
7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/FusedBatchNorm*
T0*&
_output_shapes
:@@@
û
Xnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*%
valueB"      @   @   
æ
Wnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
valueB
 *=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
seed2 *
dtype0*&
_output_shapes
:@@

Vnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W

Rnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@

5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W
VariableV2*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
	container *
shape:@@*
dtype0
õ
<nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:@@
ø
:nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@
Ô
:nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@@
±
8nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/Conv2D*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ï
7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma
VariableV2*
_output_shapes
:@*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:@*
dtype0
å
>nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma
ò
<nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:@
à
Hnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta*
valueB@*    *
dtype0*
_output_shapes
:@
í
6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta
â
=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@
ï
;nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:@
î
Onsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
û
=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean*
	container 
þ
Dnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

Bnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:@*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean
õ
Rnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*
_output_shapes
:@*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance*
valueB@*  ?*
dtype0

Ansfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 

Hnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

Fnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:@

@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( 
|
7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/FusedBatchNorm*&
_output_shapes
:@@@*
T0
û
Xnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*
valueB
 *=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*
seed2 *
dtype0*&
_output_shapes
:@@

Vnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W

Rnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:@@*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W

5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*
	container *
shape:@@
õ
<nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@
ø
:nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W
Ô
:nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/read*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@@*
	dilations
*
T0*
strides
*
data_formatNHWC
±
8nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/Conv2D*
T0*&
_output_shapes
:@@@
ª
nsfw_cls_model/conv_3_2/addAdd8nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_3_1/add*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ï
7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma
VariableV2*
_output_shapes
:@*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma*
	container *
shape:@*
dtype0
å
>nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@
ò
<nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:@
à
Hnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta*
valueB@*    *
dtype0*
_output_shapes
:@
í
6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta*
	container *
shape:@
â
=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta
ï
;nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:@
î
Onsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
û
=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:@
þ
Dnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

Bnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance*
	container *
shape:@

Hnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@

Fnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:@*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance
û
@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_3_2/add<nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( 
|
7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/FusedBatchNorm*&
_output_shapes
:@@@*
T0
û
Xnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
valueB
 *=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
seed2 *
dtype0*&
_output_shapes
:@@

Vnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@

Rnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@

5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
	container *
shape:@@
õ
<nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
validate_shape(
ø
:nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@
Ô
:nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@@
±
8nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/Conv2D*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ï
7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma
VariableV2*
_output_shapes
:@*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:@*
dtype0
å
>nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@
ò
<nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:@*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma
à
Hnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
_output_shapes
:@*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta*
valueB@*    *
dtype0
í
6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta
VariableV2*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
â
=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@
ï
;nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:@
î
Onsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
û
=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape:@
þ
Dnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

Bnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance*
	container 

Hnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

Fnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:@

@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/read*
T0*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( *
epsilon%o:
|
7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*&
_output_shapes
:@@@
û
Xnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*
valueB
 *=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*
seed2 

Vnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@

Rnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@

5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W
õ
<nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W
ø
:nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@
Ô
:nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@@*
	dilations
*
T0
±
8nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/Conv2D*&
_output_shapes
:@@@*
T0
ª
nsfw_cls_model/conv_3_3/addAdd8nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_3_2/add*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ï
7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma
å
>nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gammaHnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ò
<nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/readIdentity7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma*
_output_shapes
:@
à
Hnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/Initializer/zerosConst*
_output_shapes
:@*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta*
valueB@*    *
dtype0
í
6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta*
	container *
shape:@
â
=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/AssignAssign6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/betaHnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@
ï
;nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/readIdentity6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta*
_output_shapes
:@
î
Onsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
û
=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean*
	container *
shape:@
þ
Dnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meanOnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

Bnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance*
	container 

Hnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_varianceRnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@

Fnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance*
_output_shapes
:@*
T0
û
@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_3_3/add<nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/read;nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/readBnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/readFnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( 
|
7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/reluRelu@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/FusedBatchNorm*
T0*&
_output_shapes
:@@@
û
Xnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*%
valueB"      @   @   *
dtype0
æ
Wnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*
valueB
 *=*
dtype0
ð
bnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/shape*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 

Vnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@

Rnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:@@*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W

5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W
VariableV2*&
_output_shapes
:@@*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*
	container *
shape:@@*
dtype0
õ
<nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/AssignAssign5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/WRnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W
ø
:nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/readIdentity5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*&
_output_shapes
:@@*
T0
Ô
:nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/Conv2DConv2D3nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/relu:nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/read*
paddingSAME*&
_output_shapes
:@@@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
±
8nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/convIdentity:nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/Conv2D*
T0*&
_output_shapes
:@@@
á
Hnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/Initializer/onesConst*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ï
7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma
VariableV2*
shared_name *J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
å
>nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/AssignAssign7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gammaHnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@
ò
<nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/readIdentity7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma*
_output_shapes
:@*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma
à
Hnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta*
valueB@*    
í
6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta
VariableV2*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
â
=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/AssignAssign6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/betaHnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@
ï
;nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/readIdentity6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta*
_output_shapes
:@*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta
î
Onsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zerosConst*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
û
=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean*
	container *
shape:@
þ
Dnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/AssignAssign=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meanOnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

Bnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/readIdentity=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean*
_output_shapes
:@
õ
Rnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/onesConst*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@

Ansfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance
VariableV2*
_output_shapes
:@*
shared_name *T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance*
	container *
shape:@*
dtype0

Hnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/AssignAssignAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_varianceRnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

Fnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/readIdentityAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance*
_output_shapes
:@

@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/FusedBatchNormFusedBatchNorm8nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/conv<nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/read;nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/readBnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/readFnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( 
|
7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
®
3nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/reluRelu@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/FusedBatchNorm*
T0*&
_output_shapes
:@@@
û
Xnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
æ
Wnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
è
Ynsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
valueB
 *=*
dtype0*
_output_shapes
: 
ð
bnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
seed2 

Vnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulMulbnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/TruncatedNormalYnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@

Rnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normalAddVnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mulWnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@

5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W
VariableV2*
shared_name *H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
õ
<nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/AssignAssign5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/WRnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0
ø
:nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/readIdentity5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*&
_output_shapes
:@@
Ô
:nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/Conv2DConv2D3nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/relu:nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@@
±
8nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/convIdentity:nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/Conv2D*
T0*&
_output_shapes
:@@@
ª
nsfw_cls_model/conv_3_4/addAdd8nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/convnsfw_cls_model/conv_3_3/add*
T0*&
_output_shapes
:@@@
§
+nsfw_cls_model/fc/bn/gamma/Initializer/onesConst*-
_class#
!loc:@nsfw_cls_model/fc/bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
µ
nsfw_cls_model/fc/bn/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@nsfw_cls_model/fc/bn/gamma*
	container *
shape:@
ñ
!nsfw_cls_model/fc/bn/gamma/AssignAssignnsfw_cls_model/fc/bn/gamma+nsfw_cls_model/fc/bn/gamma/Initializer/ones*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@nsfw_cls_model/fc/bn/gamma*
validate_shape(

nsfw_cls_model/fc/bn/gamma/readIdentitynsfw_cls_model/fc/bn/gamma*
T0*-
_class#
!loc:@nsfw_cls_model/fc/bn/gamma*
_output_shapes
:@
¦
+nsfw_cls_model/fc/bn/beta/Initializer/zerosConst*,
_class"
 loc:@nsfw_cls_model/fc/bn/beta*
valueB@*    *
dtype0*
_output_shapes
:@
³
nsfw_cls_model/fc/bn/beta
VariableV2*
_output_shapes
:@*
shared_name *,
_class"
 loc:@nsfw_cls_model/fc/bn/beta*
	container *
shape:@*
dtype0
î
 nsfw_cls_model/fc/bn/beta/AssignAssignnsfw_cls_model/fc/bn/beta+nsfw_cls_model/fc/bn/beta/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@nsfw_cls_model/fc/bn/beta*
validate_shape(*
_output_shapes
:@

nsfw_cls_model/fc/bn/beta/readIdentitynsfw_cls_model/fc/bn/beta*,
_class"
 loc:@nsfw_cls_model/fc/bn/beta*
_output_shapes
:@*
T0
´
2nsfw_cls_model/fc/bn/moving_mean/Initializer/zerosConst*3
_class)
'%loc:@nsfw_cls_model/fc/bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
Á
 nsfw_cls_model/fc/bn/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *3
_class)
'%loc:@nsfw_cls_model/fc/bn/moving_mean

'nsfw_cls_model/fc/bn/moving_mean/AssignAssign nsfw_cls_model/fc/bn/moving_mean2nsfw_cls_model/fc/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@nsfw_cls_model/fc/bn/moving_mean*
validate_shape(*
_output_shapes
:@
­
%nsfw_cls_model/fc/bn/moving_mean/readIdentity nsfw_cls_model/fc/bn/moving_mean*
_output_shapes
:@*
T0*3
_class)
'%loc:@nsfw_cls_model/fc/bn/moving_mean
»
5nsfw_cls_model/fc/bn/moving_variance/Initializer/onesConst*7
_class-
+)loc:@nsfw_cls_model/fc/bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@
É
$nsfw_cls_model/fc/bn/moving_variance
VariableV2*
_output_shapes
:@*
shared_name *7
_class-
+)loc:@nsfw_cls_model/fc/bn/moving_variance*
	container *
shape:@*
dtype0

+nsfw_cls_model/fc/bn/moving_variance/AssignAssign$nsfw_cls_model/fc/bn/moving_variance5nsfw_cls_model/fc/bn/moving_variance/Initializer/ones*
use_locking(*
T0*7
_class-
+)loc:@nsfw_cls_model/fc/bn/moving_variance*
validate_shape(*
_output_shapes
:@
¹
)nsfw_cls_model/fc/bn/moving_variance/readIdentity$nsfw_cls_model/fc/bn/moving_variance*7
_class-
+)loc:@nsfw_cls_model/fc/bn/moving_variance*
_output_shapes
:@*
T0
ê
#nsfw_cls_model/fc/bn/FusedBatchNormFusedBatchNormnsfw_cls_model/conv_3_4/addnsfw_cls_model/fc/bn/gamma/readnsfw_cls_model/fc/bn/beta/read%nsfw_cls_model/fc/bn/moving_mean/read)nsfw_cls_model/fc/bn/moving_variance/read*
T0*
data_formatNHWC*>
_output_shapes,
*:@@@:@:@:@:@*
is_training( *
epsilon%o:
_
nsfw_cls_model/fc/bn/ConstConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
t
nsfw_cls_model/fc/reluRelu#nsfw_cls_model/fc/bn/FusedBatchNorm*
T0*&
_output_shapes
:@@@

3nsfw_cls_model/fc/global_avg_pool/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
¼
!nsfw_cls_model/fc/global_avg_poolMeannsfw_cls_model/fc/relu3nsfw_cls_model/fc/global_avg_pool/reduction_indices*
T0*
_output_shapes

:@*
	keep_dims( *

Tidx0
p
nsfw_cls_model/fc/Reshape/shapeConst*
_output_shapes
:*
valueB"ÿÿÿÿ@   *
dtype0

nsfw_cls_model/fc/ReshapeReshape!nsfw_cls_model/fc/global_avg_poolnsfw_cls_model/fc/Reshape/shape*
T0*
Tshape0*
_output_shapes

:@
Ñ
Fnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/shapeConst*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ã
Dnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/minConst*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
valueB
 *×³]¾*
dtype0*
_output_shapes
: 
Ã
Dnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/maxConst*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
valueB
 *×³]>*
dtype0*
_output_shapes
: 
°
Nnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/RandomUniformRandomUniformFnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
seed2 
²
Dnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/subSubDnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/maxDnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel
Ä
Dnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/mulMulNnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/RandomUniformDnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
_output_shapes

:@
¶
@nsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniformAddDnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/mulDnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform/min*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
_output_shapes

:@*
T0
Ó
%nsfw_cls_model/fc/final_logits/kernel
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
	container *
shape
:@
«
,nsfw_cls_model/fc/final_logits/kernel/AssignAssign%nsfw_cls_model/fc/final_logits/kernel@nsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform*
use_locking(*
T0*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
validate_shape(*
_output_shapes

:@
À
*nsfw_cls_model/fc/final_logits/kernel/readIdentity%nsfw_cls_model/fc/final_logits/kernel*
T0*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
_output_shapes

:@
º
5nsfw_cls_model/fc/final_logits/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*6
_class,
*(loc:@nsfw_cls_model/fc/final_logits/bias*
valueB*    
Ç
#nsfw_cls_model/fc/final_logits/bias
VariableV2*6
_class,
*(loc:@nsfw_cls_model/fc/final_logits/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 

*nsfw_cls_model/fc/final_logits/bias/AssignAssign#nsfw_cls_model/fc/final_logits/bias5nsfw_cls_model/fc/final_logits/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@nsfw_cls_model/fc/final_logits/bias
¶
(nsfw_cls_model/fc/final_logits/bias/readIdentity#nsfw_cls_model/fc/final_logits/bias*
_output_shapes
:*
T0*6
_class,
*(loc:@nsfw_cls_model/fc/final_logits/bias
Å
%nsfw_cls_model/fc/final_logits/MatMulMatMulnsfw_cls_model/fc/Reshape*nsfw_cls_model/fc/final_logits/kernel/read*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
Â
&nsfw_cls_model/fc/final_logits/BiasAddBiasAdd%nsfw_cls_model/fc/final_logits/MatMul(nsfw_cls_model/fc/final_logits/bias/read*
data_formatNHWC*
_output_shapes

:*
T0

%nsfw_cls_model/fc/final_logits/outputIdentity&nsfw_cls_model/fc/final_logits/BiasAdd*
T0*
_output_shapes

:
z
nsfw_cls_model/final_predictionSoftmax%nsfw_cls_model/fc/final_logits/output*
T0*
_output_shapes

:
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ºZ
save/SaveV2/tensor_namesConst*ìY
valueâYBßYB=nsfw_cls_model/conv_0/conv_0/bn/beta/ExponentialMovingAverageB>nsfw_cls_model/conv_0/conv_0/bn/gamma/ExponentialMovingAverageB+nsfw_cls_model/conv_0/conv_0/bn/moving_meanB/nsfw_cls_model/conv_0/conv_0/bn/moving_varianceB<nsfw_cls_model/conv_0/conv_0/conv/W/ExponentialMovingAverageBInsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageB2nsfw_cls_model/fc/bn/beta/ExponentialMovingAverageB3nsfw_cls_model/fc/bn/gamma/ExponentialMovingAverageB nsfw_cls_model/fc/bn/moving_meanB$nsfw_cls_model/fc/bn/moving_varianceB<nsfw_cls_model/fc/final_logits/bias/ExponentialMovingAverageB>nsfw_cls_model/fc/final_logits/kernel/ExponentialMovingAverage*
dtype0*
_output_shapes	
:
¢
save/SaveV2/shape_and_slicesConst*Ð
valueÆBÃB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:
I
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$nsfw_cls_model/conv_0/conv_0/bn/beta%nsfw_cls_model/conv_0/conv_0/bn/gamma+nsfw_cls_model/conv_0/conv_0/bn/moving_mean/nsfw_cls_model/conv_0/conv_0/bn/moving_variance#nsfw_cls_model/conv_0/conv_0/conv/W0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/Wnsfw_cls_model/fc/bn/betansfw_cls_model/fc/bn/gamma nsfw_cls_model/fc/bn/moving_mean$nsfw_cls_model/fc/bn/moving_variance#nsfw_cls_model/fc/final_logits/bias%nsfw_cls_model/fc/final_logits/kernel*®
dtypes£
 2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
ÌZ
save/RestoreV2/tensor_namesConst"/device:CPU:0*ìY
valueâYBßYB=nsfw_cls_model/conv_0/conv_0/bn/beta/ExponentialMovingAverageB>nsfw_cls_model/conv_0/conv_0/bn/gamma/ExponentialMovingAverageB+nsfw_cls_model/conv_0/conv_0/bn/moving_meanB/nsfw_cls_model/conv_0/conv_0/bn/moving_varianceB<nsfw_cls_model/conv_0/conv_0/conv/W/ExponentialMovingAverageBInsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_varianceBNnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/ExponentialMovingAverageBOnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/ExponentialMovingAverageBPnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/ExponentialMovingAverageB=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_varianceBNnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/ExponentialMovingAverageB2nsfw_cls_model/fc/bn/beta/ExponentialMovingAverageB3nsfw_cls_model/fc/bn/gamma/ExponentialMovingAverageB nsfw_cls_model/fc/bn/moving_meanB$nsfw_cls_model/fc/bn/moving_varianceB<nsfw_cls_model/fc/final_logits/bias/ExponentialMovingAverageB>nsfw_cls_model/fc/final_logits/kernel/ExponentialMovingAverage*
dtype0*
_output_shapes	
:
´
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ð
valueÆBÃB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:
²
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes÷
ô:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*®
dtypes£
 2
Ò
save/AssignAssign$nsfw_cls_model/conv_0/conv_0/bn/betasave/RestoreV2*
_output_shapes
:*
use_locking(*
T0*7
_class-
+)loc:@nsfw_cls_model/conv_0/conv_0/bn/beta*
validate_shape(
Ø
save/Assign_1Assign%nsfw_cls_model/conv_0/conv_0/bn/gammasave/RestoreV2:1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@nsfw_cls_model/conv_0/conv_0/bn/gamma
ä
save/Assign_2Assign+nsfw_cls_model/conv_0/conv_0/bn/moving_meansave/RestoreV2:2*>
_class4
20loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ì
save/Assign_3Assign/nsfw_cls_model/conv_0/conv_0/bn/moving_variancesave/RestoreV2:3*
use_locking(*
T0*B
_class8
64loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_variance*
validate_shape(*
_output_shapes
:
à
save/Assign_4Assign#nsfw_cls_model/conv_0/conv_0/conv/Wsave/RestoreV2:4*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*
validate_shape(
ú
save/Assign_5Assign0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/Wsave/RestoreV2:5*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W
ú
save/Assign_6Assign6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/betasave/RestoreV2:6*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta
ü
save/Assign_7Assign7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:7*J
_class@
><loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save/Assign_8Assign=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:8*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_9AssignAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:9*T
_classJ
HFloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save/Assign_10Assign5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:10*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:
ü
save/Assign_11Assign6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/betasave/RestoreV2:11*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:
þ
save/Assign_12Assign7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:12*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save/Assign_13Assign=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:13*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_14AssignAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:14*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:

save/Assign_15Assign5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:15*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
ü
save/Assign_16Assign6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/betasave/RestoreV2:16*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:
þ
save/Assign_17Assign7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:17*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma

save/Assign_18Assign=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:18*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean

save/Assign_19AssignAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:19*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

save/Assign_20Assign5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:20*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:
ü
save/Assign_21Assign6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/betasave/RestoreV2:21*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:
þ
save/Assign_22Assign7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:22*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(

save/Assign_23Assign=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:23*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_24AssignAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:24*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:

save/Assign_25Assign5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:25*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W
ü
save/Assign_26Assign6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/betasave/RestoreV2:26*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta
þ
save/Assign_27Assign7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:27*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma

save/Assign_28Assign=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:28*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_29AssignAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:29*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

save/Assign_30Assign5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:30*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:
ü
save/Assign_31Assign6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/betasave/RestoreV2:31*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:*
use_locking(
þ
save/Assign_32Assign7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:32*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(

save/Assign_33Assign=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:33*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_34AssignAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:34*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance

save/Assign_35Assign5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:35*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
validate_shape(
ü
save/Assign_36Assign6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/betasave/RestoreV2:36*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:
þ
save/Assign_37Assign7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:37*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:

save/Assign_38Assign=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:38*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_39AssignAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:39*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save/Assign_40Assign5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:40*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W
ü
save/Assign_41Assign6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/betasave/RestoreV2:41*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:
þ
save/Assign_42Assign7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:42*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:

save/Assign_43Assign=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:43*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean

save/Assign_44AssignAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:44*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance

save/Assign_45Assign5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:45*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:*
use_locking(
ü
save/Assign_46Assign6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/betasave/RestoreV2:46*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
þ
save/Assign_47Assign7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:47*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:

save/Assign_48Assign=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:48*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_49AssignAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:49*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

save/Assign_50Assign5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:50*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:
ü
save/Assign_51Assign6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/betasave/RestoreV2:51*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
þ
save/Assign_52Assign7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:52*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(

save/Assign_53Assign=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:53*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

save/Assign_54AssignAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:54*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:

save/Assign_55Assign5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:55*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
: 
ü
save/Assign_56Assign6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/betasave/RestoreV2:56*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
þ
save/Assign_57Assign7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:57*
_output_shapes
: *
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(

save/Assign_58Assign=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:58*
_output_shapes
: *
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(

save/Assign_59AssignAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:59*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save/Assign_60Assign5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:60*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  
ü
save/Assign_61Assign6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/betasave/RestoreV2:61*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta
þ
save/Assign_62Assign7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:62*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 

save/Assign_63Assign=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:63*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save/Assign_64AssignAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:64*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

save/Assign_65Assign5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:65*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0
ü
save/Assign_66Assign6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/betasave/RestoreV2:66*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(
þ
save/Assign_67Assign7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:67*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: 

save/Assign_68Assign=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:68*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save/Assign_69AssignAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:69*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

save/Assign_70Assign5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:70*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0
ü
save/Assign_71Assign6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/betasave/RestoreV2:71*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: 
þ
save/Assign_72Assign7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:72*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 

save/Assign_73Assign=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:73*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save/Assign_74AssignAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:74*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance

save/Assign_75Assign5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:75*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  
ü
save/Assign_76Assign6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/betasave/RestoreV2:76*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 
þ
save/Assign_77Assign7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:77*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: 

save/Assign_78Assign=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:78*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean

save/Assign_79AssignAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:79*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save/Assign_80Assign5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:80*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  
ü
save/Assign_81Assign6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/betasave/RestoreV2:81*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(
þ
save/Assign_82Assign7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:82*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 

save/Assign_83Assign=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:83*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save/Assign_84AssignAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:84*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save/Assign_85Assign5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:85*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  
ü
save/Assign_86Assign6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/betasave/RestoreV2:86*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 
þ
save/Assign_87Assign7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:87*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_88Assign=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:88*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save/Assign_89AssignAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:89*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_90Assign5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:90*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  
ü
save/Assign_91Assign6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/betasave/RestoreV2:91*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
þ
save/Assign_92Assign7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:92*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_93Assign=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:93*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_94AssignAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:94*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save/Assign_95Assign5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:95*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  *
use_locking(
ü
save/Assign_96Assign6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/betasave/RestoreV2:96*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 
þ
save/Assign_97Assign7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:97*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_98Assign=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:98*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save/Assign_99AssignAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:99*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save/Assign_100Assign5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:100*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  
þ
save/Assign_101Assign6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/betasave/RestoreV2:101*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_102Assign7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:102*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 

save/Assign_103Assign=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:103*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save/Assign_104AssignAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:104*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save/Assign_105Assign5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:105*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
: @*
use_locking(
þ
save/Assign_106Assign6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/betasave/RestoreV2:106*
_output_shapes
:@*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta*
validate_shape(

save/Assign_107Assign7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:107*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma

save/Assign_108Assign=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:108*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save/Assign_109AssignAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:109*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance

save/Assign_110Assign5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:110*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W
þ
save/Assign_111Assign6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/betasave/RestoreV2:111*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@

save/Assign_112Assign7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:112*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma

save/Assign_113Assign=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:113*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean

save/Assign_114AssignAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:114*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save/Assign_115Assign5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:115*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:@@
þ
save/Assign_116Assign6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/betasave/RestoreV2:116*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@

save/Assign_117Assign7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:117*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save/Assign_118Assign=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:118*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

save/Assign_119AssignAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:119*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@

save/Assign_120Assign5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:120*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W
þ
save/Assign_121Assign6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/betasave/RestoreV2:121*
_output_shapes
:@*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(

save/Assign_122Assign7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:122*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(

save/Assign_123Assign=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:123*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(

save/Assign_124AssignAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:124*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance

save/Assign_125Assign5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:125*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
validate_shape(
þ
save/Assign_126Assign6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/betasave/RestoreV2:126*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save/Assign_127Assign7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:127*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma*
validate_shape(

save/Assign_128Assign=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:128*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

save/Assign_129AssignAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:129*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save/Assign_130Assign5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:130*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W
þ
save/Assign_131Assign6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/betasave/RestoreV2:131*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@

save/Assign_132Assign7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:132*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@

save/Assign_133Assign=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:133*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@

save/Assign_134AssignAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:134*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@

save/Assign_135Assign5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:135*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
validate_shape(
þ
save/Assign_136Assign6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/betasave/RestoreV2:136*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@

save/Assign_137Assign7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:137*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save/Assign_138Assign=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:138*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean

save/Assign_139AssignAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:139*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@

save/Assign_140Assign5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:140*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@
þ
save/Assign_141Assign6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/betasave/RestoreV2:141*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta

save/Assign_142Assign7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gammasave/RestoreV2:142*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@

save/Assign_143Assign=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meansave/RestoreV2:143*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@

save/Assign_144AssignAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variancesave/RestoreV2:144*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

save/Assign_145Assign5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/Wsave/RestoreV2:145*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
þ
save/Assign_146Assign6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/betasave/RestoreV2:146*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save/Assign_147Assign7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gammasave/RestoreV2:147*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@

save/Assign_148Assign=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meansave/RestoreV2:148*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(

save/Assign_149AssignAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variancesave/RestoreV2:149*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

save/Assign_150Assign5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/Wsave/RestoreV2:150*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@
Ä
save/Assign_151Assignnsfw_cls_model/fc/bn/betasave/RestoreV2:151*
use_locking(*
T0*,
_class"
 loc:@nsfw_cls_model/fc/bn/beta*
validate_shape(*
_output_shapes
:@
Æ
save/Assign_152Assignnsfw_cls_model/fc/bn/gammasave/RestoreV2:152*
T0*-
_class#
!loc:@nsfw_cls_model/fc/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
Ò
save/Assign_153Assign nsfw_cls_model/fc/bn/moving_meansave/RestoreV2:153*
use_locking(*
T0*3
_class)
'%loc:@nsfw_cls_model/fc/bn/moving_mean*
validate_shape(*
_output_shapes
:@
Ú
save/Assign_154Assign$nsfw_cls_model/fc/bn/moving_variancesave/RestoreV2:154*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@nsfw_cls_model/fc/bn/moving_variance
Ø
save/Assign_155Assign#nsfw_cls_model/fc/final_logits/biassave/RestoreV2:155*
T0*6
_class,
*(loc:@nsfw_cls_model/fc/final_logits/bias*
validate_shape(*
_output_shapes
:*
use_locking(
à
save/Assign_156Assign%nsfw_cls_model/fc/final_logits/kernelsave/RestoreV2:156*
use_locking(*
T0*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
validate_shape(*
_output_shapes

:@
²
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
R
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_e221b0909631484ab35af15f523b4ddf/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
H
save_1/SaveV2/tensor_namesConst"/device:CPU:0*¥G
valueGBGB$nsfw_cls_model/conv_0/conv_0/bn/betaB%nsfw_cls_model/conv_0/conv_0/bn/gammaB+nsfw_cls_model/conv_0/conv_0/bn/moving_meanB/nsfw_cls_model/conv_0/conv_0/bn/moving_varianceB#nsfw_cls_model/conv_0/conv_0/conv/WB0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/WB6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/WBnsfw_cls_model/fc/bn/betaBnsfw_cls_model/fc/bn/gammaB nsfw_cls_model/fc/bn/moving_meanB$nsfw_cls_model/fc/bn/moving_varianceB#nsfw_cls_model/fc/final_logits/biasB%nsfw_cls_model/fc/final_logits/kernel*
dtype0*
_output_shapes	
:
³
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*Ð
valueÆBÃB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:
ºI
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices$nsfw_cls_model/conv_0/conv_0/bn/beta%nsfw_cls_model/conv_0/conv_0/bn/gamma+nsfw_cls_model/conv_0/conv_0/bn/moving_mean/nsfw_cls_model/conv_0/conv_0/bn/moving_variance#nsfw_cls_model/conv_0/conv_0/conv/W0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meanAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meanAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/Wnsfw_cls_model/fc/bn/betansfw_cls_model/fc/bn/gamma nsfw_cls_model/fc/bn/moving_mean$nsfw_cls_model/fc/bn/moving_variance#nsfw_cls_model/fc/final_logits/bias%nsfw_cls_model/fc/final_logits/kernel"/device:CPU:0*®
dtypes£
 2
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
²
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
H
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*¥G
valueGBGB$nsfw_cls_model/conv_0/conv_0/bn/betaB%nsfw_cls_model/conv_0/conv_0/bn/gammaB+nsfw_cls_model/conv_0/conv_0/bn/moving_meanB/nsfw_cls_model/conv_0/conv_0/bn/moving_varianceB#nsfw_cls_model/conv_0/conv_0/conv/WB0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/WB6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/WB6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/betaB7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gammaB=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_varianceB5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/WB6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/betaB7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gammaB=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meanBAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_varianceB5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/WBnsfw_cls_model/fc/bn/betaBnsfw_cls_model/fc/bn/gammaB nsfw_cls_model/fc/bn/moving_meanB$nsfw_cls_model/fc/bn/moving_varianceB#nsfw_cls_model/fc/final_logits/biasB%nsfw_cls_model/fc/final_logits/kernel*
dtype0
¶
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ð
valueÆBÃB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:
º
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes÷
ô:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*®
dtypes£
 2
Ö
save_1/AssignAssign$nsfw_cls_model/conv_0/conv_0/bn/betasave_1/RestoreV2*
use_locking(*
T0*7
_class-
+)loc:@nsfw_cls_model/conv_0/conv_0/bn/beta*
validate_shape(*
_output_shapes
:
Ü
save_1/Assign_1Assign%nsfw_cls_model/conv_0/conv_0/bn/gammasave_1/RestoreV2:1*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@nsfw_cls_model/conv_0/conv_0/bn/gamma*
validate_shape(
è
save_1/Assign_2Assign+nsfw_cls_model/conv_0/conv_0/bn/moving_meansave_1/RestoreV2:2*
use_locking(*
T0*>
_class4
20loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_mean*
validate_shape(*
_output_shapes
:
ð
save_1/Assign_3Assign/nsfw_cls_model/conv_0/conv_0/bn/moving_variancesave_1/RestoreV2:3*
use_locking(*
T0*B
_class8
64loc:@nsfw_cls_model/conv_0/conv_0/bn/moving_variance*
validate_shape(*
_output_shapes
:
ä
save_1/Assign_4Assign#nsfw_cls_model/conv_0/conv_0/conv/Wsave_1/RestoreV2:4*
use_locking(*
T0*6
_class,
*(loc:@nsfw_cls_model/conv_0/conv_0/conv/W*
validate_shape(*&
_output_shapes
:
þ
save_1/Assign_5Assign0nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/Wsave_1/RestoreV2:5*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*C
_class9
75loc:@nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W
þ
save_1/Assign_6Assign6nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:6*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:

save_1/Assign_7Assign7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:7*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(

save_1/Assign_8Assign=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:8*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_9AssignAnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:9*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

save_1/Assign_10Assign5nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:10*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W

save_1/Assign_11Assign6nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:11*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:

save_1/Assign_12Assign7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:12*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save_1/Assign_13Assign=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:13*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_14AssignAnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

save_1/Assign_15Assign5nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:15*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:

save_1/Assign_16Assign6nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:16*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:

save_1/Assign_17Assign7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:17*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_18Assign=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:18*P
_classF
DBloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save_1/Assign_19AssignAnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:19*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

save_1/Assign_20Assign5nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:20*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W*
validate_shape(

save_1/Assign_21Assign6nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:21*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta

save_1/Assign_22Assign7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:22*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:

save_1/Assign_23Assign=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:23*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_24AssignAnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:24*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save_1/Assign_25Assign5nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:25*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W

save_1/Assign_26Assign6nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:26*I
_class?
=;loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save_1/Assign_27Assign7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:27*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_28Assign=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:28*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

save_1/Assign_29AssignAnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:29*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

save_1/Assign_30Assign5nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:30*H
_class>
<:loc:@nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0

save_1/Assign_31Assign6nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:31*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:

save_1/Assign_32Assign7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:32*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma

save_1/Assign_33Assign=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:33*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_34AssignAnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:34*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_35Assign5nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:35*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0

save_1/Assign_36Assign6nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:36*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:

save_1/Assign_37Assign7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:37*
_output_shapes
:*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(

save_1/Assign_38Assign=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:38*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

save_1/Assign_39AssignAnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:39*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:

save_1/Assign_40Assign5nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:40*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:

save_1/Assign_41Assign6nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:41*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:

save_1/Assign_42Assign7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:42*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:

save_1/Assign_43Assign=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:43*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:

save_1/Assign_44AssignAnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:44*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:

save_1/Assign_45Assign5nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:45*&
_output_shapes
:*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W*
validate_shape(

save_1/Assign_46Assign6nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:46*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:

save_1/Assign_47Assign7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:47*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:

save_1/Assign_48Assign=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:48*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:

save_1/Assign_49AssignAnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:49*
_output_shapes
:*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

save_1/Assign_50Assign5nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:50*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:

save_1/Assign_51Assign6nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:51*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_52Assign7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:52*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:

save_1/Assign_53Assign=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:53*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save_1/Assign_54AssignAnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:54*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:

save_1/Assign_55Assign5nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:55*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
: *
use_locking(

save_1/Assign_56Assign6nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:56*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 

save_1/Assign_57Assign7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:57*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: 

save_1/Assign_58Assign=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:58*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save_1/Assign_59AssignAnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:59*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

save_1/Assign_60Assign5nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:60*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  

save_1/Assign_61Assign6nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:61*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: 

save_1/Assign_62Assign7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:62*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save_1/Assign_63Assign=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:63*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save_1/Assign_64AssignAnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:64*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save_1/Assign_65Assign5nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:65*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  

save_1/Assign_66Assign6nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:66*
_output_shapes
: *
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(

save_1/Assign_67Assign7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:67*
_output_shapes
: *
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(

save_1/Assign_68Assign=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:68*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean

save_1/Assign_69AssignAnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:69*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save_1/Assign_70Assign5nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:70*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  

save_1/Assign_71Assign6nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:71*
_output_shapes
: *
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(

save_1/Assign_72Assign7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:72*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 

save_1/Assign_73Assign=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:73*
_output_shapes
: *
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(

save_1/Assign_74AssignAnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:74*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/Assign_75Assign5nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:75*&
_output_shapes
:  *
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W*
validate_shape(

save_1/Assign_76Assign6nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:76*
_output_shapes
: *
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(

save_1/Assign_77Assign7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:77*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/Assign_78Assign=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:78*P
_classF
DBloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save_1/Assign_79AssignAnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:79*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save_1/Assign_80Assign5nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:80*&
_output_shapes
:  *
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W*
validate_shape(

save_1/Assign_81Assign6nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:81*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save_1/Assign_82Assign7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:82*
_output_shapes
: *
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(

save_1/Assign_83Assign=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:83*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save_1/Assign_84AssignAnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:84*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save_1/Assign_85Assign5nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:85*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:  

save_1/Assign_86Assign6nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:86*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 

save_1/Assign_87Assign7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:87*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/Assign_88Assign=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:88*
_output_shapes
: *
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(

save_1/Assign_89AssignAnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:89*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

save_1/Assign_90Assign5nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:90*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  

save_1/Assign_91Assign6nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:91*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: 

save_1/Assign_92Assign7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:92*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
: 

save_1/Assign_93Assign=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:93*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
: 

save_1/Assign_94AssignAnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:94*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
: 

save_1/Assign_95Assign5nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:95*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W

save_1/Assign_96Assign6nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:96*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
: 

save_1/Assign_97Assign7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:97*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
: 

save_1/Assign_98Assign=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:98*P
_classF
DBloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save_1/Assign_99AssignAnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:99*T
_classJ
HFloc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save_1/Assign_100Assign5nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:100*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:  

save_1/Assign_101Assign6nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:101*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/Assign_102Assign7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:102*
_output_shapes
: *
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma*
validate_shape(

save_1/Assign_103Assign=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:103*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean

save_1/Assign_104AssignAnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:104*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance

save_1/Assign_105Assign5nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:105*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
: @

save_1/Assign_106Assign6nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:106*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/Assign_107Assign7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:107*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@

save_1/Assign_108Assign=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:108*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

save_1/Assign_109AssignAnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:109*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@

save_1/Assign_110Assign5nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:110*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W

save_1/Assign_111Assign6nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:111*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@

save_1/Assign_112Assign7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:112*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@

save_1/Assign_113Assign=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:113*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/Assign_114AssignAnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:114*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(

save_1/Assign_115Assign5nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:115*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W

save_1/Assign_116Assign6nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:116*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@

save_1/Assign_117Assign7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:117*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma*
validate_shape(

save_1/Assign_118Assign=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:118*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@

save_1/Assign_119AssignAnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:119*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance

save_1/Assign_120Assign5nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:120*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@

save_1/Assign_121Assign6nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:121*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@

save_1/Assign_122Assign7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:122*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@

save_1/Assign_123Assign=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:123*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean

save_1/Assign_124AssignAnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:124*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save_1/Assign_125Assign5nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:125*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0

save_1/Assign_126Assign6nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:126*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@

save_1/Assign_127Assign7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:127*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma*
validate_shape(

save_1/Assign_128Assign=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:128*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(

save_1/Assign_129AssignAnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:129*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(

save_1/Assign_130Assign5nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:130*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@

save_1/Assign_131Assign6nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:131*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@

save_1/Assign_132Assign7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:132*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma*
validate_shape(*
_output_shapes
:@

save_1/Assign_133Assign=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:133*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@

save_1/Assign_134AssignAnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:134*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance

save_1/Assign_135Assign5nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:135*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:@@

save_1/Assign_136Assign6nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:136*
use_locking(*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@

save_1/Assign_137Assign7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:137*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@

save_1/Assign_138Assign=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:138*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(

save_1/Assign_139AssignAnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:139*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance

save_1/Assign_140Assign5nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:140*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(

save_1/Assign_141Assign6nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/betasave_1/RestoreV2:141*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/Assign_142Assign7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gammasave_1/RestoreV2:142*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma

save_1/Assign_143Assign=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_meansave_1/RestoreV2:143*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@

save_1/Assign_144AssignAnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variancesave_1/RestoreV2:144*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@

save_1/Assign_145Assign5nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/Wsave_1/RestoreV2:145*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0

save_1/Assign_146Assign6nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/betasave_1/RestoreV2:146*
T0*I
_class?
=;loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/Assign_147Assign7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gammasave_1/RestoreV2:147*J
_class@
><loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

save_1/Assign_148Assign=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_meansave_1/RestoreV2:148*
_output_shapes
:@*
use_locking(*
T0*P
_classF
DBloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean*
validate_shape(

save_1/Assign_149AssignAnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variancesave_1/RestoreV2:149*
use_locking(*
T0*T
_classJ
HFloc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@

save_1/Assign_150Assign5nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/Wsave_1/RestoreV2:150*
use_locking(*
T0*H
_class>
<:loc:@nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W*
validate_shape(*&
_output_shapes
:@@
È
save_1/Assign_151Assignnsfw_cls_model/fc/bn/betasave_1/RestoreV2:151*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@nsfw_cls_model/fc/bn/beta*
validate_shape(
Ê
save_1/Assign_152Assignnsfw_cls_model/fc/bn/gammasave_1/RestoreV2:152*
T0*-
_class#
!loc:@nsfw_cls_model/fc/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
Ö
save_1/Assign_153Assign nsfw_cls_model/fc/bn/moving_meansave_1/RestoreV2:153*
_output_shapes
:@*
use_locking(*
T0*3
_class)
'%loc:@nsfw_cls_model/fc/bn/moving_mean*
validate_shape(
Þ
save_1/Assign_154Assign$nsfw_cls_model/fc/bn/moving_variancesave_1/RestoreV2:154*
use_locking(*
T0*7
_class-
+)loc:@nsfw_cls_model/fc/bn/moving_variance*
validate_shape(*
_output_shapes
:@
Ü
save_1/Assign_155Assign#nsfw_cls_model/fc/final_logits/biassave_1/RestoreV2:155*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@nsfw_cls_model/fc/final_logits/bias
ä
save_1/Assign_156Assign%nsfw_cls_model/fc/final_logits/kernelsave_1/RestoreV2:156*8
_class.
,*loc:@nsfw_cls_model/fc/final_logits/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
ð
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_12^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_13^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_134^save_1/Assign_135^save_1/Assign_136^save_1/Assign_137^save_1/Assign_138^save_1/Assign_139^save_1/Assign_14^save_1/Assign_140^save_1/Assign_141^save_1/Assign_142^save_1/Assign_143^save_1/Assign_144^save_1/Assign_145^save_1/Assign_146^save_1/Assign_147^save_1/Assign_148^save_1/Assign_149^save_1/Assign_15^save_1/Assign_150^save_1/Assign_151^save_1/Assign_152^save_1/Assign_153^save_1/Assign_154^save_1/Assign_155^save_1/Assign_156^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ÏÂ
trainable_variables¶Â²Â
Å
%nsfw_cls_model/conv_0/conv_0/conv/W:0*nsfw_cls_model/conv_0/conv_0/conv/W/Assign*nsfw_cls_model/conv_0/conv_0/conv/W/read:02Bnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal:08
Á
'nsfw_cls_model/conv_0/conv_0/bn/gamma:0,nsfw_cls_model/conv_0/conv_0/bn/gamma/Assign,nsfw_cls_model/conv_0/conv_0/bn/gamma/read:028nsfw_cls_model/conv_0/conv_0/bn/gamma/Initializer/ones:08
¾
&nsfw_cls_model/conv_0/conv_0/bn/beta:0+nsfw_cls_model/conv_0/conv_0/bn/beta/Assign+nsfw_cls_model/conv_0/conv_0/bn/beta/read:028nsfw_cls_model/conv_0/conv_0/bn/beta/Initializer/zeros:08
ù
2nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W:07nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Assign7nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/read:02Onsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08

7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

nsfw_cls_model/fc/bn/gamma:0!nsfw_cls_model/fc/bn/gamma/Assign!nsfw_cls_model/fc/bn/gamma/read:02-nsfw_cls_model/fc/bn/gamma/Initializer/ones:08

nsfw_cls_model/fc/bn/beta:0 nsfw_cls_model/fc/bn/beta/Assign nsfw_cls_model/fc/bn/beta/read:02-nsfw_cls_model/fc/bn/beta/Initializer/zeros:08
Ë
'nsfw_cls_model/fc/final_logits/kernel:0,nsfw_cls_model/fc/final_logits/kernel/Assign,nsfw_cls_model/fc/final_logits/kernel/read:02Bnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform:08
º
%nsfw_cls_model/fc/final_logits/bias:0*nsfw_cls_model/fc/final_logits/bias/Assign*nsfw_cls_model/fc/final_logits/bias/read:027nsfw_cls_model/fc/final_logits/bias/Initializer/zeros:08"Ð
	variablesÐÐ
Å
%nsfw_cls_model/conv_0/conv_0/conv/W:0*nsfw_cls_model/conv_0/conv_0/conv/W/Assign*nsfw_cls_model/conv_0/conv_0/conv/W/read:02Bnsfw_cls_model/conv_0/conv_0/conv/W/Initializer/truncated_normal:08
Á
'nsfw_cls_model/conv_0/conv_0/bn/gamma:0,nsfw_cls_model/conv_0/conv_0/bn/gamma/Assign,nsfw_cls_model/conv_0/conv_0/bn/gamma/read:028nsfw_cls_model/conv_0/conv_0/bn/gamma/Initializer/ones:08
¾
&nsfw_cls_model/conv_0/conv_0/bn/beta:0+nsfw_cls_model/conv_0/conv_0/bn/beta/Assign+nsfw_cls_model/conv_0/conv_0/bn/beta/read:028nsfw_cls_model/conv_0/conv_0/bn/beta/Initializer/zeros:08
Ø
-nsfw_cls_model/conv_0/conv_0/bn/moving_mean:02nsfw_cls_model/conv_0/conv_0/bn/moving_mean/Assign2nsfw_cls_model/conv_0/conv_0/bn/moving_mean/read:02?nsfw_cls_model/conv_0/conv_0/bn/moving_mean/Initializer/zeros:0
ç
1nsfw_cls_model/conv_0/conv_0/bn/moving_variance:06nsfw_cls_model/conv_0/conv_0/bn/moving_variance/Assign6nsfw_cls_model/conv_0/conv_0/bn/moving_variance/read:02Bnsfw_cls_model/conv_0/conv_0/bn/moving_variance/Initializer/ones:0
ù
2nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W:07nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Assign7nsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/read:02Onsfw_cls_model/conv_1_0/conv_1_in_block/conv_1/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_1_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_1_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_2_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_2_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_0/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_0/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_1/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_1/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_2/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_2/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_3/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_3/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma:0>nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/Assign>nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/read:02Jnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta:0=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/Assign=nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/read:02Jnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean:0Dnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/AssignDnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance:0Hnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/AssignHnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W:0<nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Assign<nsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/read:02Tnsfw_cls_model/conv_3_4/conv_1_in_block/conv_1/conv/W/Initializer/truncated_normal:08

9nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma:0>nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/Assign>nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/read:02Jnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/gamma/Initializer/ones:08

8nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta:0=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/Assign=nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/read:02Jnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/beta/Initializer/zeros:08
 
?nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean:0Dnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/AssignDnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/read:02Qnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_mean/Initializer/zeros:0
¯
Cnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance:0Hnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/AssignHnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/read:02Tnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/bn/moving_variance/Initializer/ones:0

7nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W:0<nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Assign<nsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/read:02Tnsfw_cls_model/conv_3_4/conv_2_in_block/conv_2/conv/W/Initializer/truncated_normal:08

nsfw_cls_model/fc/bn/gamma:0!nsfw_cls_model/fc/bn/gamma/Assign!nsfw_cls_model/fc/bn/gamma/read:02-nsfw_cls_model/fc/bn/gamma/Initializer/ones:08

nsfw_cls_model/fc/bn/beta:0 nsfw_cls_model/fc/bn/beta/Assign nsfw_cls_model/fc/bn/beta/read:02-nsfw_cls_model/fc/bn/beta/Initializer/zeros:08
¬
"nsfw_cls_model/fc/bn/moving_mean:0'nsfw_cls_model/fc/bn/moving_mean/Assign'nsfw_cls_model/fc/bn/moving_mean/read:024nsfw_cls_model/fc/bn/moving_mean/Initializer/zeros:0
»
&nsfw_cls_model/fc/bn/moving_variance:0+nsfw_cls_model/fc/bn/moving_variance/Assign+nsfw_cls_model/fc/bn/moving_variance/read:027nsfw_cls_model/fc/bn/moving_variance/Initializer/ones:0
Ë
'nsfw_cls_model/fc/final_logits/kernel:0,nsfw_cls_model/fc/final_logits/kernel/Assign,nsfw_cls_model/fc/final_logits/kernel/read:02Bnsfw_cls_model/fc/final_logits/kernel/Initializer/random_uniform:08
º
%nsfw_cls_model/fc/final_logits/bias:0*nsfw_cls_model/fc/final_logits/bias/Assign*nsfw_cls_model/fc/final_logits/bias/read:027nsfw_cls_model/fc/final_logits/bias/Initializer/zeros:08*
inputs
6
input_tensor&
input_tensor:0=

prediction/
!nsfw_cls_model/final_prediction:0nsfw_predict