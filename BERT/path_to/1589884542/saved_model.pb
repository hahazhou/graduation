ň:
¸""
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
k
BatchMatMulV2
x"T
y"T
output"T"
Ttype:

2	"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5É5

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_stepVarHandleOp*
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 

global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	*
_class
loc:@global_step

global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
d
	label_idsPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
n
	input_idsPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
o

input_maskPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
p
segment_idsPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
f
label_ids_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
input_ids_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
input_mask_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
segment_ids_1Placeholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
P
ShapeShapelabel_ids_1*
T0*
out_type0*
_output_shapes
:
O

ones/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
_
onesFillShape
ones/Const*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
R
Shape_1Shapeinput_ids_1*
_output_shapes
:*
T0*
out_type0
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ű
strided_sliceStridedSliceShape_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
q
bert/embeddings/ExpandDims/dimConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

bert/embeddings/ExpandDims
ExpandDimsinput_ids_1bert/embeddings/ExpandDims/dim*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
Ç
Bbert/embeddings/word_embeddings/Initializer/truncated_normal/shapeConst*
valueB"R     *2
_class(
&$loc:@bert/embeddings/word_embeddings*
dtype0*
_output_shapes
:
ş
Abert/embeddings/word_embeddings/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *2
_class(
&$loc:@bert/embeddings/word_embeddings*
dtype0
ź
Cbert/embeddings/word_embeddings/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*2
_class(
&$loc:@bert/embeddings/word_embeddings*
dtype0*
_output_shapes
: 
Š
Lbert/embeddings/word_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBbert/embeddings/word_embeddings/Initializer/truncated_normal/shape*
seed2 *
dtype0*!
_output_shapes
:Ľ*

seed *
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings
ş
@bert/embeddings/word_embeddings/Initializer/truncated_normal/mulMulLbert/embeddings/word_embeddings/Initializer/truncated_normal/TruncatedNormalCbert/embeddings/word_embeddings/Initializer/truncated_normal/stddev*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:Ľ
¨
<bert/embeddings/word_embeddings/Initializer/truncated_normalAdd@bert/embeddings/word_embeddings/Initializer/truncated_normal/mulAbert/embeddings/word_embeddings/Initializer/truncated_normal/mean*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:Ľ
Í
bert/embeddings/word_embeddings
VariableV2*
	container *
shape:Ľ*
dtype0*!
_output_shapes
:Ľ*
shared_name *2
_class(
&$loc:@bert/embeddings/word_embeddings

&bert/embeddings/word_embeddings/AssignAssignbert/embeddings/word_embeddings<bert/embeddings/word_embeddings/Initializer/truncated_normal*
validate_shape(*!
_output_shapes
:Ľ*
use_locking(*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings
ą
$bert/embeddings/word_embeddings/readIdentitybert/embeddings/word_embeddings*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:Ľ
p
bert/embeddings/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

bert/embeddings/ReshapeReshapebert/embeddings/ExpandDimsbert/embeddings/Reshape/shape*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
bert/embeddings/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ę
bert/embeddings/GatherV2GatherV2$bert/embeddings/word_embeddings/readbert/embeddings/Reshapebert/embeddings/GatherV2/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
bert/embeddings/ShapeShapebert/embeddings/ExpandDims*
T0*
out_type0*
_output_shapes
:
m
#bert/embeddings/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%bert/embeddings/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
o
%bert/embeddings/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
bert/embeddings/strided_sliceStridedSlicebert/embeddings/Shape#bert/embeddings/strided_slice/stack%bert/embeddings/strided_slice/stack_1%bert/embeddings/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
d
!bert/embeddings/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
d
!bert/embeddings/Reshape_1/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
Ć
bert/embeddings/Reshape_1/shapePackbert/embeddings/strided_slice!bert/embeddings/Reshape_1/shape/1!bert/embeddings/Reshape_1/shape/2*
T0*

axis *
N*
_output_shapes
:
Ľ
bert/embeddings/Reshape_1Reshapebert/embeddings/GatherV2bert/embeddings/Reshape_1/shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
p
bert/embeddings/Shape_1Shapebert/embeddings/Reshape_1*
T0*
out_type0*
_output_shapes
:
o
%bert/embeddings/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'bert/embeddings/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'bert/embeddings/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ó
bert/embeddings/strided_slice_1StridedSlicebert/embeddings/Shape_1%bert/embeddings/strided_slice_1/stack'bert/embeddings/strided_slice_1/stack_1'bert/embeddings/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Ó
Hbert/embeddings/token_type_embeddings/Initializer/truncated_normal/shapeConst*
valueB"      *8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
:
Ć
Gbert/embeddings/token_type_embeddings/Initializer/truncated_normal/meanConst*
valueB
 *    *8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
: 
Č
Ibert/embeddings/token_type_embeddings/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
: 
š
Rbert/embeddings/token_type_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHbert/embeddings/token_type_embeddings/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	*

seed *
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
seed2 
Đ
Fbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mulMulRbert/embeddings/token_type_embeddings/Initializer/truncated_normal/TruncatedNormalIbert/embeddings/token_type_embeddings/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
ž
Bbert/embeddings/token_type_embeddings/Initializer/truncated_normalAddFbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mulGbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
Ő
%bert/embeddings/token_type_embeddings
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
	container *
shape:	
Ž
,bert/embeddings/token_type_embeddings/AssignAssign%bert/embeddings/token_type_embeddingsBbert/embeddings/token_type_embeddings/Initializer/truncated_normal*
_output_shapes
:	*
use_locking(*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
validate_shape(
Á
*bert/embeddings/token_type_embeddings/readIdentity%bert/embeddings/token_type_embeddings*
_output_shapes
:	*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings
r
bert/embeddings/Reshape_2/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

bert/embeddings/Reshape_2Reshapesegment_ids_1bert/embeddings/Reshape_2/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 bert/embeddings/one_hot/on_valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
!bert/embeddings/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
bert/embeddings/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
ń
bert/embeddings/one_hotOneHotbert/embeddings/Reshape_2bert/embeddings/one_hot/depth bert/embeddings/one_hot/on_value!bert/embeddings/one_hot/off_value*
T0*
axis˙˙˙˙˙˙˙˙˙*
TI0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
bert/embeddings/MatMulMatMulbert/embeddings/one_hot*bert/embeddings/token_type_embeddings/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
d
!bert/embeddings/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
d
!bert/embeddings/Reshape_3/shape/2Const*
_output_shapes
: *
value
B :*
dtype0
Č
bert/embeddings/Reshape_3/shapePackbert/embeddings/strided_slice_1!bert/embeddings/Reshape_3/shape/1!bert/embeddings/Reshape_3/shape/2*
T0*

axis *
N*
_output_shapes
:
Ł
bert/embeddings/Reshape_3Reshapebert/embeddings/MatMulbert/embeddings/Reshape_3/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/embeddings/addAddbert/embeddings/Reshape_1bert/embeddings/Reshape_3*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
f
#bert/embeddings/assert_less_equal/xConst*
value
B :*
dtype0*
_output_shapes
: 
f
#bert/embeddings/assert_less_equal/yConst*
value
B :*
dtype0*
_output_shapes
: 
Ł
+bert/embeddings/assert_less_equal/LessEqual	LessEqual#bert/embeddings/assert_less_equal/x#bert/embeddings/assert_less_equal/y*
_output_shapes
: *
T0
j
'bert/embeddings/assert_less_equal/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ˇ
%bert/embeddings/assert_less_equal/AllAll+bert/embeddings/assert_less_equal/LessEqual'bert/embeddings/assert_less_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
o
.bert/embeddings/assert_less_equal/Assert/ConstConst*
valueB B *
dtype0*
_output_shapes
: 
Č
0bert/embeddings/assert_less_equal/Assert/Const_1Const*h
value_B] BWCondition x <= y did not hold element-wise:x (bert/embeddings/assert_less_equal/x:0) = *
dtype0*
_output_shapes
: 

0bert/embeddings/assert_less_equal/Assert/Const_2Const*=
value4B2 B,y (bert/embeddings/assert_less_equal/y:0) = *
dtype0*
_output_shapes
: 
w
6bert/embeddings/assert_less_equal/Assert/Assert/data_0Const*
valueB B *
dtype0*
_output_shapes
: 
Î
6bert/embeddings/assert_less_equal/Assert/Assert/data_1Const*h
value_B] BWCondition x <= y did not hold element-wise:x (bert/embeddings/assert_less_equal/x:0) = *
dtype0*
_output_shapes
: 
Ł
6bert/embeddings/assert_less_equal/Assert/Assert/data_3Const*=
value4B2 B,y (bert/embeddings/assert_less_equal/y:0) = *
dtype0*
_output_shapes
: 
ó
/bert/embeddings/assert_less_equal/Assert/AssertAssert%bert/embeddings/assert_less_equal/All6bert/embeddings/assert_less_equal/Assert/Assert/data_06bert/embeddings/assert_less_equal/Assert/Assert/data_1#bert/embeddings/assert_less_equal/x6bert/embeddings/assert_less_equal/Assert/Assert/data_3#bert/embeddings/assert_less_equal/y*
T	
2*
	summarize
Ď
Fbert/embeddings/position_embeddings/Initializer/truncated_normal/shapeConst*
valueB"      *6
_class,
*(loc:@bert/embeddings/position_embeddings*
dtype0*
_output_shapes
:
Â
Ebert/embeddings/position_embeddings/Initializer/truncated_normal/meanConst*
valueB
 *    *6
_class,
*(loc:@bert/embeddings/position_embeddings*
dtype0*
_output_shapes
: 
Ä
Gbert/embeddings/position_embeddings/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*6
_class,
*(loc:@bert/embeddings/position_embeddings*
dtype0*
_output_shapes
: 
´
Pbert/embeddings/position_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFbert/embeddings/position_embeddings/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings*
seed2 
É
Dbert/embeddings/position_embeddings/Initializer/truncated_normal/mulMulPbert/embeddings/position_embeddings/Initializer/truncated_normal/TruncatedNormalGbert/embeddings/position_embeddings/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:

ˇ
@bert/embeddings/position_embeddings/Initializer/truncated_normalAddDbert/embeddings/position_embeddings/Initializer/truncated_normal/mulEbert/embeddings/position_embeddings/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:

Ó
#bert/embeddings/position_embeddings
VariableV2*
shared_name *6
_class,
*(loc:@bert/embeddings/position_embeddings*
	container *
shape:
*
dtype0* 
_output_shapes
:

§
*bert/embeddings/position_embeddings/AssignAssign#bert/embeddings/position_embeddings@bert/embeddings/position_embeddings/Initializer/truncated_normal*
use_locking(*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings*
validate_shape(* 
_output_shapes
:

ź
(bert/embeddings/position_embeddings/readIdentity#bert/embeddings/position_embeddings*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:
*
T0

bert/embeddings/Slice/beginConst0^bert/embeddings/assert_less_equal/Assert/Assert*
valueB"        *
dtype0*
_output_shapes
:

bert/embeddings/Slice/sizeConst0^bert/embeddings/assert_less_equal/Assert/Assert*
dtype0*
_output_shapes
:*
valueB"   ˙˙˙˙
š
bert/embeddings/SliceSlice(bert/embeddings/position_embeddings/readbert/embeddings/Slice/beginbert/embeddings/Slice/size*
Index0*
T0* 
_output_shapes
:

Ś
bert/embeddings/Reshape_4/shapeConst0^bert/embeddings/assert_less_equal/Assert/Assert*!
valueB"         *
dtype0*
_output_shapes
:

bert/embeddings/Reshape_4Reshapebert/embeddings/Slicebert/embeddings/Reshape_4/shape*
T0*
Tshape0*$
_output_shapes
:

bert/embeddings/add_1Addbert/embeddings/addbert/embeddings/Reshape_4*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
0bert/embeddings/LayerNorm/beta/Initializer/zerosConst*
valueB*    *1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
dtype0*
_output_shapes	
:
ż
bert/embeddings/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
	container *
shape:

%bert/embeddings/LayerNorm/beta/AssignAssignbert/embeddings/LayerNorm/beta0bert/embeddings/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
¨
#bert/embeddings/LayerNorm/beta/readIdentitybert/embeddings/LayerNorm/beta*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
_output_shapes	
:
ł
0bert/embeddings/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Á
bert/embeddings/LayerNorm/gamma
VariableV2*
shared_name *2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:

&bert/embeddings/LayerNorm/gamma/AssignAssignbert/embeddings/LayerNorm/gamma0bert/embeddings/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ť
$bert/embeddings/LayerNorm/gamma/readIdentitybert/embeddings/LayerNorm/gamma*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
_output_shapes	
:

8bert/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ó
&bert/embeddings/LayerNorm/moments/meanMeanbert/embeddings/add_18bert/embeddings/LayerNorm/moments/mean/reduction_indices*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

.bert/embeddings/LayerNorm/moments/StopGradientStopGradient&bert/embeddings/LayerNorm/moments/mean*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
3bert/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/embeddings/add_1.bert/embeddings/LayerNorm/moments/StopGradient*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

<bert/embeddings/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ů
*bert/embeddings/LayerNorm/moments/varianceMean3bert/embeddings/LayerNorm/moments/SquaredDifference<bert/embeddings/LayerNorm/moments/variance/reduction_indices*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
n
)bert/embeddings/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ź
'bert/embeddings/LayerNorm/batchnorm/addAdd*bert/embeddings/LayerNorm/moments/variance)bert/embeddings/LayerNorm/batchnorm/add/y*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

)bert/embeddings/LayerNorm/batchnorm/RsqrtRsqrt'bert/embeddings/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
'bert/embeddings/LayerNorm/batchnorm/mulMul)bert/embeddings/LayerNorm/batchnorm/Rsqrt$bert/embeddings/LayerNorm/gamma/read*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
)bert/embeddings/LayerNorm/batchnorm/mul_1Mulbert/embeddings/add_1'bert/embeddings/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
)bert/embeddings/LayerNorm/batchnorm/mul_2Mul&bert/embeddings/LayerNorm/moments/mean'bert/embeddings/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/embeddings/LayerNorm/batchnorm/subSub#bert/embeddings/LayerNorm/beta/read)bert/embeddings/LayerNorm/batchnorm/mul_2*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ź
)bert/embeddings/LayerNorm/batchnorm/add_1Add)bert/embeddings/LayerNorm/batchnorm/mul_1'bert/embeddings/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
bert/encoder/ShapeShapeinput_ids_1*
T0*
out_type0*
_output_shapes
:
j
 bert/encoder/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
l
"bert/encoder/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"bert/encoder/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ş
bert/encoder/strided_sliceStridedSlicebert/encoder/Shape bert/encoder/strided_slice/stack"bert/encoder/strided_slice/stack_1"bert/encoder/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
`
bert/encoder/Shape_1Shapeinput_mask_1*
out_type0*
_output_shapes
:*
T0
l
"bert/encoder/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
n
$bert/encoder/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_1StridedSlicebert/encoder/Shape_1"bert/encoder/strided_slice_1/stack$bert/encoder/strided_slice_1/stack_1$bert/encoder/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
^
bert/encoder/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
_
bert/encoder/Reshape/shape/2Const*
_output_shapes
: *
value
B :*
dtype0
´
bert/encoder/Reshape/shapePackbert/encoder/strided_slicebert/encoder/Reshape/shape/1bert/encoder/Reshape/shape/2*
T0*

axis *
N*
_output_shapes
:

bert/encoder/ReshapeReshapeinput_mask_1bert/encoder/Reshape/shape*
T0*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/CastCastbert/encoder/Reshape*
Truncate( *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0
Z
bert/encoder/ones/mul/yConst*
_output_shapes
: *
value
B :*
dtype0
r
bert/encoder/ones/mulMulbert/encoder/strided_slicebert/encoder/ones/mul/y*
T0*
_output_shapes
: 
[
bert/encoder/ones/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
q
bert/encoder/ones/mul_1Mulbert/encoder/ones/mulbert/encoder/ones/mul_1/y*
T0*
_output_shapes
: 
[
bert/encoder/ones/Less/yConst*
value
B :č*
dtype0*
_output_shapes
: 
r
bert/encoder/ones/LessLessbert/encoder/ones/mul_1bert/encoder/ones/Less/y*
T0*
_output_shapes
: 
]
bert/encoder/ones/packed/1Const*
value
B :*
dtype0*
_output_shapes
: 
\
bert/encoder/ones/packed/2Const*
value	B :*
dtype0*
_output_shapes
: 
Ž
bert/encoder/ones/packedPackbert/encoder/strided_slicebert/encoder/ones/packed/1bert/encoder/ones/packed/2*
T0*

axis *
N*
_output_shapes
:
\
bert/encoder/ones/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

bert/encoder/onesFillbert/encoder/ones/packedbert/encoder/ones/Const*
T0*

index_type0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
bert/encoder/mulMulbert/encoder/onesbert/encoder/Cast*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
bert/encoder/Shape_2Shape)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
l
"bert/encoder/strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
n
$bert/encoder/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
n
$bert/encoder/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_2StridedSlicebert/encoder/Shape_2"bert/encoder/strided_slice_2/stack$bert/encoder/strided_slice_2/stack_1$bert/encoder/strided_slice_2/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
m
bert/encoder/Reshape_1/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
Ť
bert/encoder/Reshape_1Reshape)bert/embeddings/LayerNorm/batchnorm/add_1bert/encoder/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_0/attention/self/ShapeShapebert/encoder/Reshape_1*
out_type0*
_output_shapes
:*
T0

7bert/encoder/layer_0/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_0/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

9bert/encoder/layer_0/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
­
1bert/encoder/layer_0/attention/self/strided_sliceStridedSlice)bert/encoder/layer_0/attention/self/Shape7bert/encoder/layer_0/attention/self/strided_slice/stack9bert/encoder/layer_0/attention/self/strided_slice/stack_19bert/encoder/layer_0/attention/self/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

+bert/encoder/layer_0/attention/self/Shape_1Shapebert/encoder/Reshape_1*
T0*
out_type0*
_output_shapes
:

9bert/encoder/layer_0/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

;bert/encoder/layer_0/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_0/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_0/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_0/attention/self/Shape_19bert/encoder/layer_0/attention/self/strided_slice_1/stack;bert/encoder/layer_0/attention/self/strided_slice_1/stack_1;bert/encoder/layer_0/attention/self/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
é
Sbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
seed2 
ý
Qbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:

í
0bert/encoder/layer_0/attention/self/query/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
	container *
shape:

Ű
7bert/encoder/layer_0/attention/self/query/kernel/AssignAssign0bert/encoder/layer_0/attention/self/query/kernelMbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_0/attention/self/query/kernel/readIdentity0bert/encoder/layer_0/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_0/attention/self/query/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias
ß
.bert/encoder/layer_0/attention/self/query/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
	container 
Ă
5bert/encoder/layer_0/attention/self/query/bias/AssignAssign.bert/encoder/layer_0/attention/self/query/bias@bert/encoder/layer_0/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_0/attention/self/query/bias/readIdentity.bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias
â
0bert/encoder/layer_0/attention/self/query/MatMulMatMulbert/encoder/Reshape_15bert/encoder/layer_0/attention/self/query/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_0/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_0/attention/self/query/MatMul3bert/encoder/layer_0/attention/self/query/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
ő
Obert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

é
.bert/encoder/layer_0/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
	container *
shape:

Ó
5bert/encoder/layer_0/attention/self/key/kernel/AssignAssign.bert/encoder/layer_0/attention/self/key/kernelKbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ý
3bert/encoder/layer_0/attention/self/key/kernel/readIdentity.bert/encoder/layer_0/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_0/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_0/attention/self/key/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias
ť
3bert/encoder/layer_0/attention/self/key/bias/AssignAssign,bert/encoder/layer_0/attention/self/key/bias>bert/encoder/layer_0/attention/self/key/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_0/attention/self/key/bias/readIdentity,bert/encoder/layer_0/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
_output_shapes	
:
Ţ
.bert/encoder/layer_0/attention/self/key/MatMulMatMulbert/encoder/Reshape_13bert/encoder/layer_0/attention/self/key/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_0/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_0/attention/self/key/MatMul1bert/encoder/layer_0/attention/self/key/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
Sbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/shape*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
seed2 *
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel
í
0bert/encoder/layer_0/attention/self/value/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
	container *
shape:

Ű
7bert/encoder/layer_0/attention/self/value/kernel/AssignAssign0bert/encoder/layer_0/attention/self/value/kernelMbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_0/attention/self/value/kernel/readIdentity0bert/encoder/layer_0/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_0/attention/self/value/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias
ß
.bert/encoder/layer_0/attention/self/value/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
	container 
Ă
5bert/encoder/layer_0/attention/self/value/bias/AssignAssign.bert/encoder/layer_0/attention/self/value/bias@bert/encoder/layer_0/attention/self/value/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
validate_shape(
Ř
3bert/encoder/layer_0/attention/self/value/bias/readIdentity.bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias
â
0bert/encoder/layer_0/attention/self/value/MatMulMatMulbert/encoder/Reshape_15bert/encoder/layer_0/attention/self/value/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_0/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_0/attention/self/value/MatMul3bert/encoder/layer_0/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
3bert/encoder/layer_0/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_0/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_0/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
°
1bert/encoder/layer_0/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_0/attention/self/Reshape/shape/13bert/encoder/layer_0/attention/self/Reshape/shape/23bert/encoder/layer_0/attention/self/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
ĺ
+bert/encoder/layer_0/attention/self/ReshapeReshape1bert/encoder/layer_0/attention/self/query/BiasAdd1bert/encoder/layer_0/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

2bert/encoder/layer_0/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ă
-bert/encoder/layer_0/attention/self/transpose	Transpose+bert/encoder/layer_0/attention/self/Reshape2bert/encoder/layer_0/attention/self/transpose/perm*
Tperm0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
x
5bert/encoder/layer_0/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_0/attention/self/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_0/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_0/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_0/attention/self/Reshape_1/shape/15bert/encoder/layer_0/attention/self/Reshape_1/shape/25bert/encoder/layer_0/attention/self/Reshape_1/shape/3*
T0*

axis *
N*
_output_shapes
:
ç
-bert/encoder/layer_0/attention/self/Reshape_1Reshape/bert/encoder/layer_0/attention/self/key/BiasAdd3bert/encoder/layer_0/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_0/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_0/attention/self/transpose_1	Transpose-bert/encoder/layer_0/attention/self/Reshape_14bert/encoder/layer_0/attention/self/transpose_1/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
ń
*bert/encoder/layer_0/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_0/attention/self/transpose/bert/encoder/layer_0/attention/self/transpose_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
adj_x( *
adj_y(*
T0
n
)bert/encoder/layer_0/attention/self/Mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *   >
Á
'bert/encoder/layer_0/attention/self/MulMul*bert/encoder/layer_0/attention/self/MatMul)bert/encoder/layer_0/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_0/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ę
.bert/encoder/layer_0/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_0/attention/self/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_0/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
'bert/encoder/layer_0/attention/self/subSub)bert/encoder/layer_0/attention/self/sub/x.bert/encoder/layer_0/attention/self/ExpandDims*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
+bert/encoder/layer_0/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_0/attention/self/mul_1Mul'bert/encoder/layer_0/attention/self/sub+bert/encoder/layer_0/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
'bert/encoder/layer_0/attention/self/addAdd'bert/encoder/layer_0/attention/self/Mul)bert/encoder/layer_0/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_0/attention/self/SoftmaxSoftmax'bert/encoder/layer_0/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5bert/encoder/layer_0/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_0/attention/self/Reshape_2/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
w
5bert/encoder/layer_0/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_0/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_0/attention/self/Reshape_2/shape/15bert/encoder/layer_0/attention/self/Reshape_2/shape/25bert/encoder/layer_0/attention/self/Reshape_2/shape/3*
N*
_output_shapes
:*
T0*

axis 
é
-bert/encoder/layer_0/attention/self/Reshape_2Reshape1bert/encoder/layer_0/attention/self/value/BiasAdd3bert/encoder/layer_0/attention/self/Reshape_2/shape*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

4bert/encoder/layer_0/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_0/attention/self/transpose_2	Transpose-bert/encoder/layer_0/attention/self/Reshape_24bert/encoder/layer_0/attention/self/transpose_2/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
đ
,bert/encoder/layer_0/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_0/attention/self/Softmax/bert/encoder/layer_0/attention/self/transpose_2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
adj_x( *
adj_y( *
T0

4bert/encoder/layer_0/attention/self/transpose_3/permConst*
dtype0*
_output_shapes
:*%
valueB"             
č
/bert/encoder/layer_0/attention/self/transpose_3	Transpose,bert/encoder/layer_0/attention/self/MatMul_14bert/encoder/layer_0/attention/self/transpose_3/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
n
+bert/encoder/layer_0/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

)bert/encoder/layer_0/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_0/attention/self/mul_2/y*
T0*
_output_shapes
: 
x
5bert/encoder/layer_0/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_0/attention/self/Reshape_3/shapePack)bert/encoder/layer_0/attention/self/mul_25bert/encoder/layer_0/attention/self/Reshape_3/shape/1*

axis *
N*
_output_shapes
:*
T0
ß
-bert/encoder/layer_0/attention/self/Reshape_3Reshape/bert/encoder/layer_0/attention/self/transpose_33bert/encoder/layer_0/attention/self/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
í
Ubert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel
â
Vbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/shape*

seed *
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:


Sbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:

ń
2bert/encoder/layer_0/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
ă
9bert/encoder/layer_0/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_0/attention/output/dense/kernelObert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

é
7bert/encoder/layer_0/attention/output/dense/kernel/readIdentity2bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel
Ö
Bbert/encoder/layer_0/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
dtype0*
_output_shapes	
:
ă
0bert/encoder/layer_0/attention/output/dense/bias
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ë
7bert/encoder/layer_0/attention/output/dense/bias/AssignAssign0bert/encoder/layer_0/attention/output/dense/biasBbert/encoder/layer_0/attention/output/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias
Ţ
5bert/encoder/layer_0/attention/output/dense/bias/readIdentity0bert/encoder/layer_0/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:
ý
2bert/encoder/layer_0/attention/output/dense/MatMulMatMul-bert/encoder/layer_0/attention/self/Reshape_37bert/encoder/layer_0/attention/output/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ó
3bert/encoder/layer_0/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_0/attention/output/dense/MatMul5bert/encoder/layer_0/attention/output/dense/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
°
)bert/encoder/layer_0/attention/output/addAdd3bert/encoder/layer_0/attention/output/dense/BiasAddbert/encoder/Reshape_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_0/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
	container *
shape:
Ű
;bert/encoder/layer_0/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_0/attention/output/LayerNorm/betaFbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ę
9bert/encoder/layer_0/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_0/attention/output/LayerNorm/beta*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:*
T0
ß
Fbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_0/attention/output/LayerNorm/gamma
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
	container 
Ţ
<bert/encoder/layer_0/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_0/attention/output/LayerNorm/gammaFbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
í
:bert/encoder/layer_0/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_0/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_0/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

<bert/encoder/layer_0/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_0/attention/output/addNbert/encoder/layer_0/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
Ä
Dbert/encoder/layer_0/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_0/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_0/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_0/attention/output/addDbert/encoder/layer_0/attention/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_0/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ś
@bert/encoder/layer_0/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_0/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_0/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_0/attention/output/LayerNorm/moments/variance?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_0/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_0/attention/output/add=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_0/attention/output/LayerNorm/moments/mean=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_0/attention/output/LayerNorm/beta/read?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ů
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
seed2 
ő
Obert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel
ă
Kbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_0/intermediate/dense/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel
Ó
5bert/encoder/layer_0/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_0/intermediate/dense/kernelKbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_0/intermediate/dense/kernel/readIdentity.bert/encoder/layer_0/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
dtype0
Ę
Dbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_0/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_0/intermediate/dense/bias
VariableV2*
shared_name *?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ť
3bert/encoder/layer_0/intermediate/dense/bias/AssignAssign,bert/encoder/layer_0/intermediate/dense/bias>bert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ň
1bert/encoder/layer_0/intermediate/dense/bias/readIdentity,bert/encoder/layer_0/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:

.bert/encoder/layer_0/intermediate/dense/MatMulMatMul?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_0/intermediate/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_0/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_0/intermediate/dense/MatMul1bert/encoder/layer_0/intermediate/dense/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
r
-bert/encoder/layer_0/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Ĺ
+bert/encoder/layer_0/intermediate/dense/PowPow/bert/encoder/layer_0/intermediate/dense/BiasAdd-bert/encoder/layer_0/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_0/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_0/intermediate/dense/mulMul-bert/encoder/layer_0/intermediate/dense/mul/x+bert/encoder/layer_0/intermediate/dense/Pow*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
+bert/encoder/layer_0/intermediate/dense/addAdd/bert/encoder/layer_0/intermediate/dense/BiasAdd+bert/encoder/layer_0/intermediate/dense/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_0/intermediate/dense/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 **BL?
Ĺ
-bert/encoder/layer_0/intermediate/dense/mul_1Mul/bert/encoder/layer_0/intermediate/dense/mul_1/x+bert/encoder/layer_0/intermediate/dense/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_0/intermediate/dense/TanhTanh-bert/encoder/layer_0/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_0/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_0/intermediate/dense/add_1Add/bert/encoder/layer_0/intermediate/dense/add_1/x,bert/encoder/layer_0/intermediate/dense/Tanh*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_0/intermediate/dense/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
Ç
-bert/encoder/layer_0/intermediate/dense/mul_2Mul/bert/encoder/layer_0/intermediate/dense/mul_2/x-bert/encoder/layer_0/intermediate/dense/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
-bert/encoder/layer_0/intermediate/dense/mul_3Mul/bert/encoder/layer_0/intermediate/dense/BiasAdd-bert/encoder/layer_0/intermediate/dense/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Kbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/shape*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0
Ý
Ibert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

Ý
(bert/encoder/layer_0/output/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
	container *
shape:

ť
/bert/encoder/layer_0/output/dense/kernel/AssignAssign(bert/encoder/layer_0/output/dense/kernelEbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ë
-bert/encoder/layer_0/output/dense/kernel/readIdentity(bert/encoder/layer_0/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_0/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_0/output/dense/bias
VariableV2*
shared_name *9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ł
-bert/encoder/layer_0/output/dense/bias/AssignAssign&bert/encoder/layer_0/output/dense/bias8bert/encoder/layer_0/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ŕ
+bert/encoder/layer_0/output/dense/bias/readIdentity&bert/encoder/layer_0/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
_output_shapes	
:
é
(bert/encoder/layer_0/output/dense/MatMulMatMul-bert/encoder/layer_0/intermediate/dense/mul_3-bert/encoder/layer_0/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
)bert/encoder/layer_0/output/dense/BiasAddBiasAdd(bert/encoder/layer_0/output/dense/MatMul+bert/encoder/layer_0/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
bert/encoder/layer_0/output/addAdd)bert/encoder/layer_0/output/dense/BiasAdd?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
×
*bert/encoder/layer_0/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
	container *
shape:
ł
1bert/encoder/layer_0/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_0/output/LayerNorm/beta<bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
Ě
/bert/encoder/layer_0/output/LayerNorm/beta/readIdentity*bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta
Ë
<bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ů
+bert/encoder/layer_0/output/LayerNorm/gamma
VariableV2*
shared_name *>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
ś
2bert/encoder/layer_0/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_0/output/LayerNorm/gamma<bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ď
0bert/encoder/layer_0/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma

Dbert/encoder/layer_0/output/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
đ
2bert/encoder/layer_0/output/LayerNorm/moments/meanMeanbert/encoder/layer_0/output/addDbert/encoder/layer_0/output/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
°
:bert/encoder/layer_0/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_0/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
?bert/encoder/layer_0/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_0/output/add:bert/encoder/layer_0/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Hbert/encoder/layer_0/output/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:

6bert/encoder/layer_0/output/LayerNorm/moments/varianceMean?bert/encoder/layer_0/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_0/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
5bert/encoder/layer_0/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_0/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_0/output/LayerNorm/moments/variance5bert/encoder/layer_0/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_0/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_0/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
3bert/encoder/layer_0/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_0/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_0/output/add3bert/encoder/layer_0/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ř
5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_0/output/LayerNorm/moments/mean3bert/encoder/layer_0/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
3bert/encoder/layer_0/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_0/output/LayerNorm/beta/read5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ű
5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_0/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_1/attention/self/ShapeShape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0

7bert/encoder/layer_1/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_1/attention/self/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9bert/encoder/layer_1/attention/self/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1bert/encoder/layer_1/attention/self/strided_sliceStridedSlice)bert/encoder/layer_1/attention/self/Shape7bert/encoder/layer_1/attention/self/strided_slice/stack9bert/encoder/layer_1/attention/self/strided_slice/stack_19bert/encoder/layer_1/attention/self/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
 
+bert/encoder/layer_1/attention/self/Shape_1Shape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

9bert/encoder/layer_1/attention/self/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 

;bert/encoder/layer_1/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_1/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_1/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_1/attention/self/Shape_19bert/encoder/layer_1/attention/self/strided_slice_1/stack;bert/encoder/layer_1/attention/self/strided_slice_1/stack_1;bert/encoder/layer_1/attention/self/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
é
Sbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
Ü
Rbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
Ţ
Tbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
Ű
]bert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
ý
Qbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/stddev*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:
*
T0
ë
Mbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
í
0bert/encoder/layer_1/attention/self/query/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
Ű
7bert/encoder/layer_1/attention/self/query/kernel/AssignAssign0bert/encoder/layer_1/attention/self/query/kernelMbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_1/attention/self/query/kernel/readIdentity0bert/encoder/layer_1/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_1/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_1/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
	container *
shape:
Ă
5bert/encoder/layer_1/attention/self/query/bias/AssignAssign.bert/encoder/layer_1/attention/self/query/bias@bert/encoder/layer_1/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_1/attention/self/query/bias/readIdentity.bert/encoder/layer_1/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
_output_shapes	
:

0bert/encoder/layer_1/attention/self/query/MatMulMatMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_15bert/encoder/layer_1/attention/self/query/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
í
1bert/encoder/layer_1/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_1/attention/self/query/MatMul3bert/encoder/layer_1/attention/self/query/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel
Ő
[bert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/shape*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
seed2 *
dtype0* 
_output_shapes
:

ő
Obert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/stddev*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:
*
T0
ă
Kbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mean*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:
*
T0
é
.bert/encoder/layer_1/attention/self/key/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel
Ó
5bert/encoder/layer_1/attention/self/key/kernel/AssignAssign.bert/encoder/layer_1/attention/self/key/kernelKbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_1/attention/self/key/kernel/readIdentity.bert/encoder/layer_1/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_1/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_1/attention/self/key/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
	container *
shape:
ť
3bert/encoder/layer_1/attention/self/key/bias/AssignAssign,bert/encoder/layer_1/attention/self/key/bias>bert/encoder/layer_1/attention/self/key/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_1/attention/self/key/bias/readIdentity,bert/encoder/layer_1/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:
ý
.bert/encoder/layer_1/attention/self/key/MatMulMatMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_13bert/encoder/layer_1/attention/self/key/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_1/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_1/attention/self/key/MatMul1bert/encoder/layer_1/attention/self/key/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
Sbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
dtype0
Ű
]bert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel
ý
Qbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

í
0bert/encoder/layer_1/attention/self/value/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel
Ű
7bert/encoder/layer_1/attention/self/value/kernel/AssignAssign0bert/encoder/layer_1/attention/self/value/kernelMbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_1/attention/self/value/kernel/readIdentity0bert/encoder/layer_1/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_1/attention/self/value/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias
ß
.bert/encoder/layer_1/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
	container *
shape:
Ă
5bert/encoder/layer_1/attention/self/value/bias/AssignAssign.bert/encoder/layer_1/attention/self/value/bias@bert/encoder/layer_1/attention/self/value/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_1/attention/self/value/bias/readIdentity.bert/encoder/layer_1/attention/self/value/bias*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_1/attention/self/value/MatMulMatMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_15bert/encoder/layer_1/attention/self/value/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
í
1bert/encoder/layer_1/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_1/attention/self/value/MatMul3bert/encoder/layer_1/attention/self/value/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
v
3bert/encoder/layer_1/attention/self/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
u
3bert/encoder/layer_1/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_1/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
°
1bert/encoder/layer_1/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_1/attention/self/Reshape/shape/13bert/encoder/layer_1/attention/self/Reshape/shape/23bert/encoder/layer_1/attention/self/Reshape/shape/3*
_output_shapes
:*
T0*

axis *
N
ĺ
+bert/encoder/layer_1/attention/self/ReshapeReshape1bert/encoder/layer_1/attention/self/query/BiasAdd1bert/encoder/layer_1/attention/self/Reshape/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
Tshape0

2bert/encoder/layer_1/attention/self/transpose/permConst*
_output_shapes
:*%
valueB"             *
dtype0
ă
-bert/encoder/layer_1/attention/self/transpose	Transpose+bert/encoder/layer_1/attention/self/Reshape2bert/encoder/layer_1/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
x
5bert/encoder/layer_1/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_1/attention/self/Reshape_1/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
w
5bert/encoder/layer_1/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_1/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_1/attention/self/Reshape_1/shape/15bert/encoder/layer_1/attention/self/Reshape_1/shape/25bert/encoder/layer_1/attention/self/Reshape_1/shape/3*
_output_shapes
:*
T0*

axis *
N
ç
-bert/encoder/layer_1/attention/self/Reshape_1Reshape/bert/encoder/layer_1/attention/self/key/BiasAdd3bert/encoder/layer_1/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_1/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_1/attention/self/transpose_1	Transpose-bert/encoder/layer_1/attention/self/Reshape_14bert/encoder/layer_1/attention/self/transpose_1/perm*
Tperm0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ń
*bert/encoder/layer_1/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_1/attention/self/transpose/bert/encoder/layer_1/attention/self/transpose_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
adj_x( *
adj_y(*
T0
n
)bert/encoder/layer_1/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Á
'bert/encoder/layer_1/attention/self/MulMul*bert/encoder/layer_1/attention/self/MatMul)bert/encoder/layer_1/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_1/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ę
.bert/encoder/layer_1/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_1/attention/self/ExpandDims/dim*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
n
)bert/encoder/layer_1/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
'bert/encoder/layer_1/attention/self/subSub)bert/encoder/layer_1/attention/self/sub/x.bert/encoder/layer_1/attention/self/ExpandDims*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
+bert/encoder/layer_1/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_1/attention/self/mul_1Mul'bert/encoder/layer_1/attention/self/sub+bert/encoder/layer_1/attention/self/mul_1/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
'bert/encoder/layer_1/attention/self/addAdd'bert/encoder/layer_1/attention/self/Mul)bert/encoder/layer_1/attention/self/mul_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

+bert/encoder/layer_1/attention/self/SoftmaxSoftmax'bert/encoder/layer_1/attention/self/add*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
5bert/encoder/layer_1/attention/self/Reshape_2/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
w
5bert/encoder/layer_1/attention/self/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_1/attention/self/Reshape_2/shape/3Const*
_output_shapes
: *
value	B :@*
dtype0
¸
3bert/encoder/layer_1/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_1/attention/self/Reshape_2/shape/15bert/encoder/layer_1/attention/self/Reshape_2/shape/25bert/encoder/layer_1/attention/self/Reshape_2/shape/3*
_output_shapes
:*
T0*

axis *
N
é
-bert/encoder/layer_1/attention/self/Reshape_2Reshape1bert/encoder/layer_1/attention/self/value/BiasAdd3bert/encoder/layer_1/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_1/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_1/attention/self/transpose_2	Transpose-bert/encoder/layer_1/attention/self/Reshape_24bert/encoder/layer_1/attention/self/transpose_2/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
đ
,bert/encoder/layer_1/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_1/attention/self/Softmax/bert/encoder/layer_1/attention/self/transpose_2*
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
adj_x( 

4bert/encoder/layer_1/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
č
/bert/encoder/layer_1/attention/self/transpose_3	Transpose,bert/encoder/layer_1/attention/self/MatMul_14bert/encoder/layer_1/attention/self/transpose_3/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
n
+bert/encoder/layer_1/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

)bert/encoder/layer_1/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_1/attention/self/mul_2/y*
_output_shapes
: *
T0
x
5bert/encoder/layer_1/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_1/attention/self/Reshape_3/shapePack)bert/encoder/layer_1/attention/self/mul_25bert/encoder/layer_1/attention/self/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ß
-bert/encoder/layer_1/attention/self/Reshape_3Reshape/bert/encoder/layer_1/attention/self/transpose_33bert/encoder/layer_1/attention/self/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Ubert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel
ŕ
Tbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel
â
Vbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
seed2 

Sbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:

ń
2bert/encoder/layer_1/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
ă
9bert/encoder/layer_1/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_1/attention/output/dense/kernelObert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

é
7bert/encoder/layer_1/attention/output/dense/kernel/readIdentity2bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel
Ö
Bbert/encoder/layer_1/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
dtype0*
_output_shapes	
:
ă
0bert/encoder/layer_1/attention/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
	container *
shape:
Ë
7bert/encoder/layer_1/attention/output/dense/bias/AssignAssign0bert/encoder/layer_1/attention/output/dense/biasBbert/encoder/layer_1/attention/output/dense/bias/Initializer/zeros*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ţ
5bert/encoder/layer_1/attention/output/dense/bias/readIdentity0bert/encoder/layer_1/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes	
:
ý
2bert/encoder/layer_1/attention/output/dense/MatMulMatMul-bert/encoder/layer_1/attention/self/Reshape_37bert/encoder/layer_1/attention/output/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ó
3bert/encoder/layer_1/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_1/attention/output/dense/MatMul5bert/encoder/layer_1/attention/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
)bert/encoder/layer_1/attention/output/addAdd3bert/encoder/layer_1/attention/output/dense/BiasAdd5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
dtype0
ë
4bert/encoder/layer_1/attention/output/LayerNorm/beta
VariableV2*
shared_name *G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:
Ű
;bert/encoder/layer_1/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_1/attention/output/LayerNorm/betaFbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ę
9bert/encoder/layer_1/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_1/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma
í
5bert/encoder/layer_1/attention/output/LayerNorm/gamma
VariableV2*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ţ
<bert/encoder/layer_1/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_1/attention/output/LayerNorm/gammaFbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
í
:bert/encoder/layer_1/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_1/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_1/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_1/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_1/attention/output/addNbert/encoder/layer_1/attention/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
Dbert/encoder/layer_1/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_1/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_1/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_1/attention/output/addDbert/encoder/layer_1/attention/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_1/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ś
@bert/encoder/layer_1/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_1/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_1/attention/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_1/attention/output/LayerNorm/moments/variance?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_1/attention/output/LayerNorm/gamma/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ă
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_1/attention/output/add=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_1/attention/output/LayerNorm/moments/mean=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ó
=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_1/attention/output/LayerNorm/beta/read?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
dtype0
Ú
Rbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
seed2 
ő
Obert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mean*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:
*
T0
é
.bert/encoder/layer_1/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ó
5bert/encoder/layer_1/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_1/intermediate/dense/kernelKbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_1/intermediate/dense/kernel/readIdentity.bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel
Ú
Nbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias
Ę
Dbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias
Ő
>bert/encoder/layer_1/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_1/intermediate/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
	container *
shape:
ť
3bert/encoder/layer_1/intermediate/dense/bias/AssignAssign,bert/encoder/layer_1/intermediate/dense/bias>bert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias
Ň
1bert/encoder/layer_1/intermediate/dense/bias/readIdentity,bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias

.bert/encoder/layer_1/intermediate/dense/MatMulMatMul?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_1/intermediate/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_1/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_1/intermediate/dense/MatMul1bert/encoder/layer_1/intermediate/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
-bert/encoder/layer_1/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Ĺ
+bert/encoder/layer_1/intermediate/dense/PowPow/bert/encoder/layer_1/intermediate/dense/BiasAdd-bert/encoder/layer_1/intermediate/dense/Pow/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
-bert/encoder/layer_1/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_1/intermediate/dense/mulMul-bert/encoder/layer_1/intermediate/dense/mul/x+bert/encoder/layer_1/intermediate/dense/Pow*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
+bert/encoder/layer_1/intermediate/dense/addAdd/bert/encoder/layer_1/intermediate/dense/BiasAdd+bert/encoder/layer_1/intermediate/dense/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_1/intermediate/dense/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 **BL?
Ĺ
-bert/encoder/layer_1/intermediate/dense/mul_1Mul/bert/encoder/layer_1/intermediate/dense/mul_1/x+bert/encoder/layer_1/intermediate/dense/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_1/intermediate/dense/TanhTanh-bert/encoder/layer_1/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_1/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_1/intermediate/dense/add_1Add/bert/encoder/layer_1/intermediate/dense/add_1/x,bert/encoder/layer_1/intermediate/dense/Tanh*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_1/intermediate/dense/mul_2/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
Ç
-bert/encoder/layer_1/intermediate/dense/mul_2Mul/bert/encoder/layer_1/intermediate/dense/mul_2/x-bert/encoder/layer_1/intermediate/dense/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
-bert/encoder/layer_1/intermediate/dense/mul_3Mul/bert/encoder/layer_1/intermediate/dense/BiasAdd-bert/encoder/layer_1/intermediate/dense/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ů
Kbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/shape*

seed *
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel
Ý
(bert/encoder/layer_1/output/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
	container *
shape:

ť
/bert/encoder/layer_1/output/dense/kernel/AssignAssign(bert/encoder/layer_1/output/dense/kernelEbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
validate_shape(* 
_output_shapes
:

Ë
-bert/encoder/layer_1/output/dense/kernel/readIdentity(bert/encoder/layer_1/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_1/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_1/output/dense/bias
VariableV2*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ł
-bert/encoder/layer_1/output/dense/bias/AssignAssign&bert/encoder/layer_1/output/dense/bias8bert/encoder/layer_1/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
validate_shape(
Ŕ
+bert/encoder/layer_1/output/dense/bias/readIdentity&bert/encoder/layer_1/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:
é
(bert/encoder/layer_1/output/dense/MatMulMatMul-bert/encoder/layer_1/intermediate/dense/mul_3-bert/encoder/layer_1/output/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ő
)bert/encoder/layer_1/output/dense/BiasAddBiasAdd(bert/encoder/layer_1/output/dense/MatMul+bert/encoder/layer_1/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
bert/encoder/layer_1/output/addAdd)bert/encoder/layer_1/output/dense/BiasAdd?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
×
*bert/encoder/layer_1/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
	container *
shape:
ł
1bert/encoder/layer_1/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_1/output/LayerNorm/beta<bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
Ě
/bert/encoder/layer_1/output/LayerNorm/beta/readIdentity*bert/encoder/layer_1/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma
Ů
+bert/encoder/layer_1/output/LayerNorm/gamma
VariableV2*
shared_name *>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
ś
2bert/encoder/layer_1/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_1/output/LayerNorm/gamma<bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ď
0bert/encoder/layer_1/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_1/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_1/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
đ
2bert/encoder/layer_1/output/LayerNorm/moments/meanMeanbert/encoder/layer_1/output/addDbert/encoder/layer_1/output/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
°
:bert/encoder/layer_1/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_1/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
?bert/encoder/layer_1/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_1/output/add:bert/encoder/layer_1/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Hbert/encoder/layer_1/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_1/output/LayerNorm/moments/varianceMean?bert/encoder/layer_1/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_1/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
z
5bert/encoder/layer_1/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_1/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_1/output/LayerNorm/moments/variance5bert/encoder/layer_1/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_1/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_1/output/LayerNorm/batchnorm/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ö
3bert/encoder/layer_1/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_1/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_1/output/add3bert/encoder/layer_1/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ř
5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_1/output/LayerNorm/moments/mean3bert/encoder/layer_1/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
3bert/encoder/layer_1/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_1/output/LayerNorm/beta/read5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ű
5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_1/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_2/attention/self/ShapeShape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
out_type0*
_output_shapes
:*
T0

7bert/encoder/layer_2/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_2/attention/self/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

9bert/encoder/layer_2/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
­
1bert/encoder/layer_2/attention/self/strided_sliceStridedSlice)bert/encoder/layer_2/attention/self/Shape7bert/encoder/layer_2/attention/self/strided_slice/stack9bert/encoder/layer_2/attention/self/strided_slice/stack_19bert/encoder/layer_2/attention/self/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
 
+bert/encoder/layer_2/attention/self/Shape_1Shape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

9bert/encoder/layer_2/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

;bert/encoder/layer_2/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_2/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ˇ
3bert/encoder/layer_2/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_2/attention/self/Shape_19bert/encoder/layer_2/attention/self/strided_slice_1/stack;bert/encoder/layer_2/attention/self/strided_slice_1/stack_1;bert/encoder/layer_2/attention/self/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
é
Sbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
dtype0
Ü
Rbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
seed2 
ý
Qbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel
ë
Mbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel
í
0bert/encoder/layer_2/attention/self/query/kernel
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ű
7bert/encoder/layer_2/attention/self/query/kernel/AssignAssign0bert/encoder/layer_2/attention/self/query/kernelMbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel
ă
5bert/encoder/layer_2/attention/self/query/kernel/readIdentity0bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel
Ň
@bert/encoder/layer_2/attention/self/query/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
dtype0
ß
.bert/encoder/layer_2/attention/self/query/bias
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ă
5bert/encoder/layer_2/attention/self/query/bias/AssignAssign.bert/encoder/layer_2/attention/self/query/bias@bert/encoder/layer_2/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_2/attention/self/query/bias/readIdentity.bert/encoder/layer_2/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
_output_shapes	
:

0bert/encoder/layer_2/attention/self/query/MatMulMatMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_15bert/encoder/layer_2/attention/self/query/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_2/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_2/attention/self/query/MatMul3bert/encoder/layer_2/attention/self/query/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel
Ř
Pbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
ő
Obert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel
é
.bert/encoder/layer_2/attention/self/key/kernel
VariableV2* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
	container *
shape:
*
dtype0
Ó
5bert/encoder/layer_2/attention/self/key/kernel/AssignAssign.bert/encoder/layer_2/attention/self/key/kernelKbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel
Ý
3bert/encoder/layer_2/attention/self/key/kernel/readIdentity.bert/encoder/layer_2/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_2/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_2/attention/self/key/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
	container *
shape:
ť
3bert/encoder/layer_2/attention/self/key/bias/AssignAssign,bert/encoder/layer_2/attention/self/key/bias>bert/encoder/layer_2/attention/self/key/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias
Ň
1bert/encoder/layer_2/attention/self/key/bias/readIdentity,bert/encoder/layer_2/attention/self/key/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias
ý
.bert/encoder/layer_2/attention/self/key/MatMulMatMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_13bert/encoder/layer_2/attention/self/key/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ç
/bert/encoder/layer_2/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_2/attention/self/key/MatMul1bert/encoder/layer_2/attention/self/key/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
é
Sbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel
Ü
Rbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
seed2 
ý
Qbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel
ë
Mbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mean*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:
*
T0
í
0bert/encoder/layer_2/attention/self/value/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
	container *
shape:

Ű
7bert/encoder/layer_2/attention/self/value/kernel/AssignAssign0bert/encoder/layer_2/attention/self/value/kernelMbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ă
5bert/encoder/layer_2/attention/self/value/kernel/readIdentity0bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel
Ň
@bert/encoder/layer_2/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_2/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
	container *
shape:
Ă
5bert/encoder/layer_2/attention/self/value/bias/AssignAssign.bert/encoder/layer_2/attention/self/value/bias@bert/encoder/layer_2/attention/self/value/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_2/attention/self/value/bias/readIdentity.bert/encoder/layer_2/attention/self/value/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias

0bert/encoder/layer_2/attention/self/value/MatMulMatMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_15bert/encoder/layer_2/attention/self/value/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
í
1bert/encoder/layer_2/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_2/attention/self/value/MatMul3bert/encoder/layer_2/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
3bert/encoder/layer_2/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_2/attention/self/Reshape/shape/2Const*
_output_shapes
: *
value	B :*
dtype0
u
3bert/encoder/layer_2/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
°
1bert/encoder/layer_2/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_2/attention/self/Reshape/shape/13bert/encoder/layer_2/attention/self/Reshape/shape/23bert/encoder/layer_2/attention/self/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
ĺ
+bert/encoder/layer_2/attention/self/ReshapeReshape1bert/encoder/layer_2/attention/self/query/BiasAdd1bert/encoder/layer_2/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

2bert/encoder/layer_2/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ă
-bert/encoder/layer_2/attention/self/transpose	Transpose+bert/encoder/layer_2/attention/self/Reshape2bert/encoder/layer_2/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
x
5bert/encoder/layer_2/attention/self/Reshape_1/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
w
5bert/encoder/layer_2/attention/self/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_2/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_2/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_2/attention/self/Reshape_1/shape/15bert/encoder/layer_2/attention/self/Reshape_1/shape/25bert/encoder/layer_2/attention/self/Reshape_1/shape/3*

axis *
N*
_output_shapes
:*
T0
ç
-bert/encoder/layer_2/attention/self/Reshape_1Reshape/bert/encoder/layer_2/attention/self/key/BiasAdd3bert/encoder/layer_2/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_2/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_2/attention/self/transpose_1	Transpose-bert/encoder/layer_2/attention/self/Reshape_14bert/encoder/layer_2/attention/self/transpose_1/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
ń
*bert/encoder/layer_2/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_2/attention/self/transpose/bert/encoder/layer_2/attention/self/transpose_1*
adj_x( *
adj_y(*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_2/attention/self/Mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *   >
Á
'bert/encoder/layer_2/attention/self/MulMul*bert/encoder/layer_2/attention/self/MatMul)bert/encoder/layer_2/attention/self/Mul/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
|
2bert/encoder/layer_2/attention/self/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
Ę
.bert/encoder/layer_2/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_2/attention/self/ExpandDims/dim*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
n
)bert/encoder/layer_2/attention/self/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Ĺ
'bert/encoder/layer_2/attention/self/subSub)bert/encoder/layer_2/attention/self/sub/x.bert/encoder/layer_2/attention/self/ExpandDims*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
+bert/encoder/layer_2/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_2/attention/self/mul_1Mul'bert/encoder/layer_2/attention/self/sub+bert/encoder/layer_2/attention/self/mul_1/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
'bert/encoder/layer_2/attention/self/addAdd'bert/encoder/layer_2/attention/self/Mul)bert/encoder/layer_2/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_2/attention/self/SoftmaxSoftmax'bert/encoder/layer_2/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5bert/encoder/layer_2/attention/self/Reshape_2/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
w
5bert/encoder/layer_2/attention/self/Reshape_2/shape/2Const*
_output_shapes
: *
value	B :*
dtype0
w
5bert/encoder/layer_2/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_2/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_2/attention/self/Reshape_2/shape/15bert/encoder/layer_2/attention/self/Reshape_2/shape/25bert/encoder/layer_2/attention/self/Reshape_2/shape/3*
N*
_output_shapes
:*
T0*

axis 
é
-bert/encoder/layer_2/attention/self/Reshape_2Reshape1bert/encoder/layer_2/attention/self/value/BiasAdd3bert/encoder/layer_2/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_2/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_2/attention/self/transpose_2	Transpose-bert/encoder/layer_2/attention/self/Reshape_24bert/encoder/layer_2/attention/self/transpose_2/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
đ
,bert/encoder/layer_2/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_2/attention/self/Softmax/bert/encoder/layer_2/attention/self/transpose_2*
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
adj_x( 

4bert/encoder/layer_2/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
č
/bert/encoder/layer_2/attention/self/transpose_3	Transpose,bert/encoder/layer_2/attention/self/MatMul_14bert/encoder/layer_2/attention/self/transpose_3/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
n
+bert/encoder/layer_2/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

)bert/encoder/layer_2/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_2/attention/self/mul_2/y*
_output_shapes
: *
T0
x
5bert/encoder/layer_2/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_2/attention/self/Reshape_3/shapePack)bert/encoder/layer_2/attention/self/mul_25bert/encoder/layer_2/attention/self/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ß
-bert/encoder/layer_2/attention/self/Reshape_3Reshape/bert/encoder/layer_2/attention/self/transpose_33bert/encoder/layer_2/attention/self/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Ubert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel
â
Vbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
seed2 

Sbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:

ń
2bert/encoder/layer_2/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
ă
9bert/encoder/layer_2/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_2/attention/output/dense/kernelObert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

é
7bert/encoder/layer_2/attention/output/dense/kernel/readIdentity2bert/encoder/layer_2/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_2/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
dtype0*
_output_shapes	
:
ă
0bert/encoder/layer_2/attention/output/dense/bias
VariableV2*
_output_shapes	
:*
shared_name *C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
	container *
shape:*
dtype0
Ë
7bert/encoder/layer_2/attention/output/dense/bias/AssignAssign0bert/encoder/layer_2/attention/output/dense/biasBbert/encoder/layer_2/attention/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
validate_shape(
Ţ
5bert/encoder/layer_2/attention/output/dense/bias/readIdentity0bert/encoder/layer_2/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes	
:
ý
2bert/encoder/layer_2/attention/output/dense/MatMulMatMul-bert/encoder/layer_2/attention/self/Reshape_37bert/encoder/layer_2/attention/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ó
3bert/encoder/layer_2/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_2/attention/output/dense/MatMul5bert/encoder/layer_2/attention/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
)bert/encoder/layer_2/attention/output/addAdd3bert/encoder/layer_2/attention/output/dense/BiasAdd5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ţ
Fbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_2/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
	container *
shape:
Ű
;bert/encoder/layer_2/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_2/attention/output/LayerNorm/betaFbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zeros*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ę
9bert/encoder/layer_2/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_2/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_2/attention/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
	container *
shape:
Ţ
<bert/encoder/layer_2/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_2/attention/output/LayerNorm/gammaFbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
í
:bert/encoder/layer_2/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_2/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_2/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_2/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_2/attention/output/addNbert/encoder/layer_2/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
Ä
Dbert/encoder/layer_2/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_2/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_2/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_2/attention/output/addDbert/encoder/layer_2/attention/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Rbert/encoder/layer_2/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ś
@bert/encoder/layer_2/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_2/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_2/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_2/attention/output/LayerNorm/moments/variance?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_2/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_2/attention/output/add=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ö
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_2/attention/output/LayerNorm/moments/mean=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ó
=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_2/attention/output/LayerNorm/beta/read?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
dtype0
Ú
Rbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/shape*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0
ő
Obert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_2/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
	container *
shape:

Ó
5bert/encoder/layer_2/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_2/intermediate/dense/kernelKbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ý
3bert/encoder/layer_2/intermediate/dense/kernel/readIdentity.bert/encoder/layer_2/intermediate/dense/kernel*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:
*
T0
Ú
Nbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ę
Dbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias
Ő
>bert/encoder/layer_2/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_2/intermediate/dense/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ť
3bert/encoder/layer_2/intermediate/dense/bias/AssignAssign,bert/encoder/layer_2/intermediate/dense/bias>bert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ň
1bert/encoder/layer_2/intermediate/dense/bias/readIdentity,bert/encoder/layer_2/intermediate/dense/bias*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:*
T0

.bert/encoder/layer_2/intermediate/dense/MatMulMatMul?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_2/intermediate/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ç
/bert/encoder/layer_2/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_2/intermediate/dense/MatMul1bert/encoder/layer_2/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_2/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Ĺ
+bert/encoder/layer_2/intermediate/dense/PowPow/bert/encoder/layer_2/intermediate/dense/BiasAdd-bert/encoder/layer_2/intermediate/dense/Pow/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
-bert/encoder/layer_2/intermediate/dense/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *'7=
Á
+bert/encoder/layer_2/intermediate/dense/mulMul-bert/encoder/layer_2/intermediate/dense/mul/x+bert/encoder/layer_2/intermediate/dense/Pow*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
+bert/encoder/layer_2/intermediate/dense/addAdd/bert/encoder/layer_2/intermediate/dense/BiasAdd+bert/encoder/layer_2/intermediate/dense/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_2/intermediate/dense/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 **BL?
Ĺ
-bert/encoder/layer_2/intermediate/dense/mul_1Mul/bert/encoder/layer_2/intermediate/dense/mul_1/x+bert/encoder/layer_2/intermediate/dense/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

,bert/encoder/layer_2/intermediate/dense/TanhTanh-bert/encoder/layer_2/intermediate/dense/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_2/intermediate/dense/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ć
-bert/encoder/layer_2/intermediate/dense/add_1Add/bert/encoder/layer_2/intermediate/dense/add_1/x,bert/encoder/layer_2/intermediate/dense/Tanh*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_2/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ç
-bert/encoder/layer_2/intermediate/dense/mul_2Mul/bert/encoder/layer_2/intermediate/dense/mul_2/x-bert/encoder/layer_2/intermediate/dense/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
-bert/encoder/layer_2/intermediate/dense/mul_3Mul/bert/encoder/layer_2/intermediate/dense/BiasAdd-bert/encoder/layer_2/intermediate/dense/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Kbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel
Ý
Ibert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

Ý
(bert/encoder/layer_2/output/dense/kernel
VariableV2* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
	container *
shape:
*
dtype0
ť
/bert/encoder/layer_2/output/dense/kernel/AssignAssign(bert/encoder/layer_2/output/dense/kernelEbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
validate_shape(* 
_output_shapes
:

Ë
-bert/encoder/layer_2/output/dense/kernel/readIdentity(bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel
Â
8bert/encoder/layer_2/output/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
dtype0
Ď
&bert/encoder/layer_2/output/dense/bias
VariableV2*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
	container *
shape:*
dtype0
Ł
-bert/encoder/layer_2/output/dense/bias/AssignAssign&bert/encoder/layer_2/output/dense/bias8bert/encoder/layer_2/output/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias
Ŕ
+bert/encoder/layer_2/output/dense/bias/readIdentity&bert/encoder/layer_2/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
_output_shapes	
:
é
(bert/encoder/layer_2/output/dense/MatMulMatMul-bert/encoder/layer_2/intermediate/dense/mul_3-bert/encoder/layer_2/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
)bert/encoder/layer_2/output/dense/BiasAddBiasAdd(bert/encoder/layer_2/output/dense/MatMul+bert/encoder/layer_2/output/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
bert/encoder/layer_2/output/addAdd)bert/encoder/layer_2/output/dense/BiasAdd?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
<bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
×
*bert/encoder/layer_2/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ł
1bert/encoder/layer_2/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_2/output/LayerNorm/beta<bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
validate_shape(
Ě
/bert/encoder/layer_2/output/LayerNorm/beta/readIdentity*bert/encoder/layer_2/output/LayerNorm/beta*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:*
T0
Ë
<bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ů
+bert/encoder/layer_2/output/LayerNorm/gamma
VariableV2*
shared_name *>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
ś
2bert/encoder/layer_2/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_2/output/LayerNorm/gamma<bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ď
0bert/encoder/layer_2/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_2/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_2/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
đ
2bert/encoder/layer_2/output/LayerNorm/moments/meanMeanbert/encoder/layer_2/output/addDbert/encoder/layer_2/output/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
°
:bert/encoder/layer_2/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_2/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
?bert/encoder/layer_2/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_2/output/add:bert/encoder/layer_2/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Hbert/encoder/layer_2/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_2/output/LayerNorm/moments/varianceMean?bert/encoder/layer_2/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_2/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
5bert/encoder/layer_2/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_2/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_2/output/LayerNorm/moments/variance5bert/encoder/layer_2/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_2/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_2/output/LayerNorm/batchnorm/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ö
3bert/encoder/layer_2/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_2/output/LayerNorm/gamma/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_2/output/add3bert/encoder/layer_2/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_2/output/LayerNorm/moments/mean3bert/encoder/layer_2/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
3bert/encoder/layer_2/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_2/output/LayerNorm/beta/read5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_2/output/LayerNorm/batchnorm/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

)bert/encoder/layer_3/attention/self/ShapeShape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

7bert/encoder/layer_3/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_3/attention/self/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9bert/encoder/layer_3/attention/self/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1bert/encoder/layer_3/attention/self/strided_sliceStridedSlice)bert/encoder/layer_3/attention/self/Shape7bert/encoder/layer_3/attention/self/strided_slice/stack9bert/encoder/layer_3/attention/self/strided_slice/stack_19bert/encoder/layer_3/attention/self/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
 
+bert/encoder/layer_3/attention/self/Shape_1Shape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0

9bert/encoder/layer_3/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

;bert/encoder/layer_3/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_3/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_3/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_3/attention/self/Shape_19bert/encoder/layer_3/attention/self/strided_slice_1/stack;bert/encoder/layer_3/attention/self/strided_slice_1/stack_1;bert/encoder/layer_3/attention/self/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
é
Sbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel
Ţ
Tbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
seed2 
ý
Qbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:

í
0bert/encoder/layer_3/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ű
7bert/encoder/layer_3/attention/self/query/kernel/AssignAssign0bert/encoder/layer_3/attention/self/query/kernelMbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_3/attention/self/query/kernel/readIdentity0bert/encoder/layer_3/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_3/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_3/attention/self/query/bias
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ă
5bert/encoder/layer_3/attention/self/query/bias/AssignAssign.bert/encoder/layer_3/attention/self/query/bias@bert/encoder/layer_3/attention/self/query/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
validate_shape(
Ř
3bert/encoder/layer_3/attention/self/query/bias/readIdentity.bert/encoder/layer_3/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:

0bert/encoder/layer_3/attention/self/query/MatMulMatMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_15bert/encoder/layer_3/attention/self/query/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
í
1bert/encoder/layer_3/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_3/attention/self/query/MatMul3bert/encoder/layer_3/attention/self/query/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
seed2 
ő
Obert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

é
.bert/encoder/layer_3/attention/self/key/kernel
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ó
5bert/encoder/layer_3/attention/self/key/kernel/AssignAssign.bert/encoder/layer_3/attention/self/key/kernelKbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_3/attention/self/key/kernel/readIdentity.bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel
Î
>bert/encoder/layer_3/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_3/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ť
3bert/encoder/layer_3/attention/self/key/bias/AssignAssign,bert/encoder/layer_3/attention/self/key/bias>bert/encoder/layer_3/attention/self/key/bias/Initializer/zeros*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ň
1bert/encoder/layer_3/attention/self/key/bias/readIdentity,bert/encoder/layer_3/attention/self/key/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias
ý
.bert/encoder/layer_3/attention/self/key/MatMulMatMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_13bert/encoder/layer_3/attention/self/key/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_3/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_3/attention/self/key/MatMul1bert/encoder/layer_3/attention/self/key/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
é
Sbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
seed2 
ý
Qbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/stddev*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:
*
T0
ë
Mbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel
í
0bert/encoder/layer_3/attention/self/value/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
	container 
Ű
7bert/encoder/layer_3/attention/self/value/kernel/AssignAssign0bert/encoder/layer_3/attention/self/value/kernelMbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_3/attention/self/value/kernel/readIdentity0bert/encoder/layer_3/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_3/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_3/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
	container *
shape:
Ă
5bert/encoder/layer_3/attention/self/value/bias/AssignAssign.bert/encoder/layer_3/attention/self/value/bias@bert/encoder/layer_3/attention/self/value/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_3/attention/self/value/bias/readIdentity.bert/encoder/layer_3/attention/self/value/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias

0bert/encoder/layer_3/attention/self/value/MatMulMatMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_15bert/encoder/layer_3/attention/self/value/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
í
1bert/encoder/layer_3/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_3/attention/self/value/MatMul3bert/encoder/layer_3/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
3bert/encoder/layer_3/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_3/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_3/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
°
1bert/encoder/layer_3/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_3/attention/self/Reshape/shape/13bert/encoder/layer_3/attention/self/Reshape/shape/23bert/encoder/layer_3/attention/self/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
ĺ
+bert/encoder/layer_3/attention/self/ReshapeReshape1bert/encoder/layer_3/attention/self/query/BiasAdd1bert/encoder/layer_3/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

2bert/encoder/layer_3/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ă
-bert/encoder/layer_3/attention/self/transpose	Transpose+bert/encoder/layer_3/attention/self/Reshape2bert/encoder/layer_3/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
x
5bert/encoder/layer_3/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_3/attention/self/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_3/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_3/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_3/attention/self/Reshape_1/shape/15bert/encoder/layer_3/attention/self/Reshape_1/shape/25bert/encoder/layer_3/attention/self/Reshape_1/shape/3*
T0*

axis *
N*
_output_shapes
:
ç
-bert/encoder/layer_3/attention/self/Reshape_1Reshape/bert/encoder/layer_3/attention/self/key/BiasAdd3bert/encoder/layer_3/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_3/attention/self/transpose_1/permConst*
_output_shapes
:*%
valueB"             *
dtype0
é
/bert/encoder/layer_3/attention/self/transpose_1	Transpose-bert/encoder/layer_3/attention/self/Reshape_14bert/encoder/layer_3/attention/self/transpose_1/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ń
*bert/encoder/layer_3/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_3/attention/self/transpose/bert/encoder/layer_3/attention/self/transpose_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
adj_x( *
adj_y(
n
)bert/encoder/layer_3/attention/self/Mul/yConst*
_output_shapes
: *
valueB
 *   >*
dtype0
Á
'bert/encoder/layer_3/attention/self/MulMul*bert/encoder/layer_3/attention/self/MatMul)bert/encoder/layer_3/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_3/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ę
.bert/encoder/layer_3/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_3/attention/self/ExpandDims/dim*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
n
)bert/encoder/layer_3/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
'bert/encoder/layer_3/attention/self/subSub)bert/encoder/layer_3/attention/self/sub/x.bert/encoder/layer_3/attention/self/ExpandDims*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
+bert/encoder/layer_3/attention/self/mul_1/yConst*
_output_shapes
: *
valueB
 * @Ć*
dtype0
Â
)bert/encoder/layer_3/attention/self/mul_1Mul'bert/encoder/layer_3/attention/self/sub+bert/encoder/layer_3/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
'bert/encoder/layer_3/attention/self/addAdd'bert/encoder/layer_3/attention/self/Mul)bert/encoder/layer_3/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_3/attention/self/SoftmaxSoftmax'bert/encoder/layer_3/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5bert/encoder/layer_3/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_3/attention/self/Reshape_2/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
w
5bert/encoder/layer_3/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_3/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_3/attention/self/Reshape_2/shape/15bert/encoder/layer_3/attention/self/Reshape_2/shape/25bert/encoder/layer_3/attention/self/Reshape_2/shape/3*

axis *
N*
_output_shapes
:*
T0
é
-bert/encoder/layer_3/attention/self/Reshape_2Reshape1bert/encoder/layer_3/attention/self/value/BiasAdd3bert/encoder/layer_3/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_3/attention/self/transpose_2/permConst*
_output_shapes
:*%
valueB"             *
dtype0
é
/bert/encoder/layer_3/attention/self/transpose_2	Transpose-bert/encoder/layer_3/attention/self/Reshape_24bert/encoder/layer_3/attention/self/transpose_2/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
đ
,bert/encoder/layer_3/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_3/attention/self/Softmax/bert/encoder/layer_3/attention/self/transpose_2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
adj_x( *
adj_y( *
T0

4bert/encoder/layer_3/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
č
/bert/encoder/layer_3/attention/self/transpose_3	Transpose,bert/encoder/layer_3/attention/self/MatMul_14bert/encoder/layer_3/attention/self/transpose_3/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
n
+bert/encoder/layer_3/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

)bert/encoder/layer_3/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_3/attention/self/mul_2/y*
T0*
_output_shapes
: 
x
5bert/encoder/layer_3/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_3/attention/self/Reshape_3/shapePack)bert/encoder/layer_3/attention/self/mul_25bert/encoder/layer_3/attention/self/Reshape_3/shape/1*

axis *
N*
_output_shapes
:*
T0
ß
-bert/encoder/layer_3/attention/self/Reshape_3Reshape/bert/encoder/layer_3/attention/self/transpose_33bert/encoder/layer_3/attention/self/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
í
Ubert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel
â
Vbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
dtype0
á
_bert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 

Sbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/stddev*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:
*
T0
ó
Obert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mean*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:
*
T0
ń
2bert/encoder/layer_3/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
ă
9bert/encoder/layer_3/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_3/attention/output/dense/kernelObert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
é
7bert/encoder/layer_3/attention/output/dense/kernel/readIdentity2bert/encoder/layer_3/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_3/attention/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias
ă
0bert/encoder/layer_3/attention/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
	container *
shape:
Ë
7bert/encoder/layer_3/attention/output/dense/bias/AssignAssign0bert/encoder/layer_3/attention/output/dense/biasBbert/encoder/layer_3/attention/output/dense/bias/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ţ
5bert/encoder/layer_3/attention/output/dense/bias/readIdentity0bert/encoder/layer_3/attention/output/dense/bias*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:*
T0
ý
2bert/encoder/layer_3/attention/output/dense/MatMulMatMul-bert/encoder/layer_3/attention/self/Reshape_37bert/encoder/layer_3/attention/output/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ó
3bert/encoder/layer_3/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_3/attention/output/dense/MatMul5bert/encoder/layer_3/attention/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
)bert/encoder/layer_3/attention/output/addAdd3bert/encoder/layer_3/attention/output/dense/BiasAdd5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ţ
Fbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_3/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
	container *
shape:
Ű
;bert/encoder/layer_3/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_3/attention/output/LayerNorm/betaFbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ę
9bert/encoder/layer_3/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta
ß
Fbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_3/attention/output/LayerNorm/gamma
VariableV2*
shared_name *H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
Ţ
<bert/encoder/layer_3/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_3/attention/output/LayerNorm/gammaFbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
í
:bert/encoder/layer_3/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_3/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_3/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

<bert/encoder/layer_3/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_3/attention/output/addNbert/encoder/layer_3/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
Ä
Dbert/encoder/layer_3/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_3/attention/output/LayerNorm/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ibert/encoder/layer_3/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_3/attention/output/addDbert/encoder/layer_3/attention/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Rbert/encoder/layer_3/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
ś
@bert/encoder/layer_3/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_3/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_3/attention/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_3/attention/output/LayerNorm/moments/variance?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_3/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_3/attention/output/add=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_3/attention/output/LayerNorm/moments/mean=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ó
=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_3/attention/output/LayerNorm/beta/read?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ů
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel
Ř
Pbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
seed2 
ő
Obert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/stddev*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:
*
T0
ă
Kbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_3/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
	container *
shape:

Ó
5bert/encoder/layer_3/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_3/intermediate/dense/kernelKbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ý
3bert/encoder/layer_3/intermediate/dense/kernel/readIdentity.bert/encoder/layer_3/intermediate/dense/kernel*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:
*
T0
Ú
Nbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ę
Dbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_3/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_3/intermediate/dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
	container 
ť
3bert/encoder/layer_3/intermediate/dense/bias/AssignAssign,bert/encoder/layer_3/intermediate/dense/bias>bert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_3/intermediate/dense/bias/readIdentity,bert/encoder/layer_3/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:

.bert/encoder/layer_3/intermediate/dense/MatMulMatMul?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_3/intermediate/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_3/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_3/intermediate/dense/MatMul1bert/encoder/layer_3/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_3/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Ĺ
+bert/encoder/layer_3/intermediate/dense/PowPow/bert/encoder/layer_3/intermediate/dense/BiasAdd-bert/encoder/layer_3/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_3/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_3/intermediate/dense/mulMul-bert/encoder/layer_3/intermediate/dense/mul/x+bert/encoder/layer_3/intermediate/dense/Pow*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
+bert/encoder/layer_3/intermediate/dense/addAdd/bert/encoder/layer_3/intermediate/dense/BiasAdd+bert/encoder/layer_3/intermediate/dense/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_3/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Ĺ
-bert/encoder/layer_3/intermediate/dense/mul_1Mul/bert/encoder/layer_3/intermediate/dense/mul_1/x+bert/encoder/layer_3/intermediate/dense/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

,bert/encoder/layer_3/intermediate/dense/TanhTanh-bert/encoder/layer_3/intermediate/dense/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_3/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_3/intermediate/dense/add_1Add/bert/encoder/layer_3/intermediate/dense/add_1/x,bert/encoder/layer_3/intermediate/dense/Tanh*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_3/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ç
-bert/encoder/layer_3/intermediate/dense/mul_2Mul/bert/encoder/layer_3/intermediate/dense/mul_2/x-bert/encoder/layer_3/intermediate/dense/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
-bert/encoder/layer_3/intermediate/dense/mul_3Mul/bert/encoder/layer_3/intermediate/dense/BiasAdd-bert/encoder/layer_3/intermediate/dense/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Kbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel
Ě
Jbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
Ý
Ibert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/stddev*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:
*
T0
Ë
Ebert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

Ý
(bert/encoder/layer_3/output/dense/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel
ť
/bert/encoder/layer_3/output/dense/kernel/AssignAssign(bert/encoder/layer_3/output/dense/kernelEbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel
Ë
-bert/encoder/layer_3/output/dense/kernel/readIdentity(bert/encoder/layer_3/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_3/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_3/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
	container *
shape:
Ł
-bert/encoder/layer_3/output/dense/bias/AssignAssign&bert/encoder/layer_3/output/dense/bias8bert/encoder/layer_3/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ŕ
+bert/encoder/layer_3/output/dense/bias/readIdentity&bert/encoder/layer_3/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
_output_shapes	
:
é
(bert/encoder/layer_3/output/dense/MatMulMatMul-bert/encoder/layer_3/intermediate/dense/mul_3-bert/encoder/layer_3/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
)bert/encoder/layer_3/output/dense/BiasAddBiasAdd(bert/encoder/layer_3/output/dense/MatMul+bert/encoder/layer_3/output/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
bert/encoder/layer_3/output/addAdd)bert/encoder/layer_3/output/dense/BiasAdd?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
dtype0
×
*bert/encoder/layer_3/output/LayerNorm/beta
VariableV2*
shared_name *=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:
ł
1bert/encoder/layer_3/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_3/output/LayerNorm/beta<bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta
Ě
/bert/encoder/layer_3/output/LayerNorm/beta/readIdentity*bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta
Ë
<bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/onesConst*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
dtype0
Ů
+bert/encoder/layer_3/output/LayerNorm/gamma
VariableV2*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ś
2bert/encoder/layer_3/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_3/output/LayerNorm/gamma<bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ď
0bert/encoder/layer_3/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_3/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_3/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
đ
2bert/encoder/layer_3/output/LayerNorm/moments/meanMeanbert/encoder/layer_3/output/addDbert/encoder/layer_3/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
:bert/encoder/layer_3/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_3/output/LayerNorm/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ä
?bert/encoder/layer_3/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_3/output/add:bert/encoder/layer_3/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Hbert/encoder/layer_3/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_3/output/LayerNorm/moments/varianceMean?bert/encoder/layer_3/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_3/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
z
5bert/encoder/layer_3/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_3/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_3/output/LayerNorm/moments/variance5bert/encoder/layer_3/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_3/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_3/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
3bert/encoder/layer_3/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_3/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_3/output/add3bert/encoder/layer_3/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ř
5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_3/output/LayerNorm/moments/mean3bert/encoder/layer_3/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ő
3bert/encoder/layer_3/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_3/output/LayerNorm/beta/read5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ű
5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_3/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_4/attention/self/ShapeShape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0

7bert/encoder/layer_4/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_4/attention/self/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9bert/encoder/layer_4/attention/self/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1bert/encoder/layer_4/attention/self/strided_sliceStridedSlice)bert/encoder/layer_4/attention/self/Shape7bert/encoder/layer_4/attention/self/strided_slice/stack9bert/encoder/layer_4/attention/self/strided_slice/stack_19bert/encoder/layer_4/attention/self/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
 
+bert/encoder/layer_4/attention/self/Shape_1Shape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

9bert/encoder/layer_4/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

;bert/encoder/layer_4/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_4/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_4/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_4/attention/self/Shape_19bert/encoder/layer_4/attention/self/strided_slice_1/stack;bert/encoder/layer_4/attention/self/strided_slice_1/stack_1;bert/encoder/layer_4/attention/self/strided_slice_1/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
é
Sbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
dtype0
Ţ
Tbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
dtype0
Ű
]bert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
seed2 
ý
Qbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

í
0bert/encoder/layer_4/attention/self/query/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
	container 
Ű
7bert/encoder/layer_4/attention/self/query/kernel/AssignAssign0bert/encoder/layer_4/attention/self/query/kernelMbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_4/attention/self/query/kernel/readIdentity0bert/encoder/layer_4/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_4/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_4/attention/self/query/bias
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ă
5bert/encoder/layer_4/attention/self/query/bias/AssignAssign.bert/encoder/layer_4/attention/self/query/bias@bert/encoder/layer_4/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_4/attention/self/query/bias/readIdentity.bert/encoder/layer_4/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:

0bert/encoder/layer_4/attention/self/query/MatMulMatMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_15bert/encoder/layer_4/attention/self/query/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_4/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_4/attention/self/query/MatMul3bert/encoder/layer_4/attention/self/query/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
ĺ
Qbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
dtype0
Ř
Pbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
seed2 
ő
Obert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel
é
.bert/encoder/layer_4/attention/self/key/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel
Ó
5bert/encoder/layer_4/attention/self/key/kernel/AssignAssign.bert/encoder/layer_4/attention/self/key/kernelKbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_4/attention/self/key/kernel/readIdentity.bert/encoder/layer_4/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_4/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_4/attention/self/key/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
	container 
ť
3bert/encoder/layer_4/attention/self/key/bias/AssignAssign,bert/encoder/layer_4/attention/self/key/bias>bert/encoder/layer_4/attention/self/key/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_4/attention/self/key/bias/readIdentity,bert/encoder/layer_4/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:
ý
.bert/encoder/layer_4/attention/self/key/MatMulMatMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_13bert/encoder/layer_4/attention/self/key/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_4/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_4/attention/self/key/MatMul1bert/encoder/layer_4/attention/self/key/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
Sbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel
Ü
Rbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
ý
Qbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:

í
0bert/encoder/layer_4/attention/self/value/kernel
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ű
7bert/encoder/layer_4/attention/self/value/kernel/AssignAssign0bert/encoder/layer_4/attention/self/value/kernelMbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel
ă
5bert/encoder/layer_4/attention/self/value/kernel/readIdentity0bert/encoder/layer_4/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_4/attention/self/value/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias
ß
.bert/encoder/layer_4/attention/self/value/bias
VariableV2*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ă
5bert/encoder/layer_4/attention/self/value/bias/AssignAssign.bert/encoder/layer_4/attention/self/value/bias@bert/encoder/layer_4/attention/self/value/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias
Ř
3bert/encoder/layer_4/attention/self/value/bias/readIdentity.bert/encoder/layer_4/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
_output_shapes	
:

0bert/encoder/layer_4/attention/self/value/MatMulMatMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_15bert/encoder/layer_4/attention/self/value/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_4/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_4/attention/self/value/MatMul3bert/encoder/layer_4/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
3bert/encoder/layer_4/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_4/attention/self/Reshape/shape/2Const*
_output_shapes
: *
value	B :*
dtype0
u
3bert/encoder/layer_4/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
°
1bert/encoder/layer_4/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_4/attention/self/Reshape/shape/13bert/encoder/layer_4/attention/self/Reshape/shape/23bert/encoder/layer_4/attention/self/Reshape/shape/3*
_output_shapes
:*
T0*

axis *
N
ĺ
+bert/encoder/layer_4/attention/self/ReshapeReshape1bert/encoder/layer_4/attention/self/query/BiasAdd1bert/encoder/layer_4/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

2bert/encoder/layer_4/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ă
-bert/encoder/layer_4/attention/self/transpose	Transpose+bert/encoder/layer_4/attention/self/Reshape2bert/encoder/layer_4/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
x
5bert/encoder/layer_4/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_4/attention/self/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_4/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_4/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_4/attention/self/Reshape_1/shape/15bert/encoder/layer_4/attention/self/Reshape_1/shape/25bert/encoder/layer_4/attention/self/Reshape_1/shape/3*
_output_shapes
:*
T0*

axis *
N
ç
-bert/encoder/layer_4/attention/self/Reshape_1Reshape/bert/encoder/layer_4/attention/self/key/BiasAdd3bert/encoder/layer_4/attention/self/Reshape_1/shape*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

4bert/encoder/layer_4/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_4/attention/self/transpose_1	Transpose-bert/encoder/layer_4/attention/self/Reshape_14bert/encoder/layer_4/attention/self/transpose_1/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ń
*bert/encoder/layer_4/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_4/attention/self/transpose/bert/encoder/layer_4/attention/self/transpose_1*
adj_x( *
adj_y(*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_4/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Á
'bert/encoder/layer_4/attention/self/MulMul*bert/encoder/layer_4/attention/self/MatMul)bert/encoder/layer_4/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_4/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ę
.bert/encoder/layer_4/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_4/attention/self/ExpandDims/dim*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
n
)bert/encoder/layer_4/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
'bert/encoder/layer_4/attention/self/subSub)bert/encoder/layer_4/attention/self/sub/x.bert/encoder/layer_4/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_4/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_4/attention/self/mul_1Mul'bert/encoder/layer_4/attention/self/sub+bert/encoder/layer_4/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
'bert/encoder/layer_4/attention/self/addAdd'bert/encoder/layer_4/attention/self/Mul)bert/encoder/layer_4/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_4/attention/self/SoftmaxSoftmax'bert/encoder/layer_4/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5bert/encoder/layer_4/attention/self/Reshape_2/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
w
5bert/encoder/layer_4/attention/self/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_4/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_4/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_4/attention/self/Reshape_2/shape/15bert/encoder/layer_4/attention/self/Reshape_2/shape/25bert/encoder/layer_4/attention/self/Reshape_2/shape/3*

axis *
N*
_output_shapes
:*
T0
é
-bert/encoder/layer_4/attention/self/Reshape_2Reshape1bert/encoder/layer_4/attention/self/value/BiasAdd3bert/encoder/layer_4/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_4/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_4/attention/self/transpose_2	Transpose-bert/encoder/layer_4/attention/self/Reshape_24bert/encoder/layer_4/attention/self/transpose_2/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
đ
,bert/encoder/layer_4/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_4/attention/self/Softmax/bert/encoder/layer_4/attention/self/transpose_2*
adj_x( *
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_4/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
č
/bert/encoder/layer_4/attention/self/transpose_3	Transpose,bert/encoder/layer_4/attention/self/MatMul_14bert/encoder/layer_4/attention/self/transpose_3/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
n
+bert/encoder/layer_4/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

)bert/encoder/layer_4/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_4/attention/self/mul_2/y*
T0*
_output_shapes
: 
x
5bert/encoder/layer_4/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_4/attention/self/Reshape_3/shapePack)bert/encoder/layer_4/attention/self/mul_25bert/encoder/layer_4/attention/self/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ß
-bert/encoder/layer_4/attention/self/Reshape_3Reshape/bert/encoder/layer_4/attention/self/transpose_33bert/encoder/layer_4/attention/self/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
í
Ubert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
dtype0
ŕ
Tbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel
â
Vbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/shape*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0

Sbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel
ó
Obert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel
ń
2bert/encoder/layer_4/attention/output/dense/kernel
VariableV2*
shared_name *E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ă
9bert/encoder/layer_4/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_4/attention/output/dense/kernelObert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
é
7bert/encoder/layer_4/attention/output/dense/kernel/readIdentity2bert/encoder/layer_4/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_4/attention/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias
ă
0bert/encoder/layer_4/attention/output/dense/bias
VariableV2*
_output_shapes	
:*
shared_name *C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
	container *
shape:*
dtype0
Ë
7bert/encoder/layer_4/attention/output/dense/bias/AssignAssign0bert/encoder/layer_4/attention/output/dense/biasBbert/encoder/layer_4/attention/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
validate_shape(
Ţ
5bert/encoder/layer_4/attention/output/dense/bias/readIdentity0bert/encoder/layer_4/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes	
:
ý
2bert/encoder/layer_4/attention/output/dense/MatMulMatMul-bert/encoder/layer_4/attention/self/Reshape_37bert/encoder/layer_4/attention/output/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ó
3bert/encoder/layer_4/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_4/attention/output/dense/MatMul5bert/encoder/layer_4/attention/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
)bert/encoder/layer_4/attention/output/addAdd3bert/encoder/layer_4/attention/output/dense/BiasAdd5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_4/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
	container *
shape:
Ű
;bert/encoder/layer_4/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_4/attention/output/LayerNorm/betaFbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ę
9bert/encoder/layer_4/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta
ß
Fbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_4/attention/output/LayerNorm/gamma
VariableV2*
shared_name *H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
Ţ
<bert/encoder/layer_4/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_4/attention/output/LayerNorm/gammaFbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/ones*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
í
:bert/encoder/layer_4/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_4/attention/output/LayerNorm/gamma*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes	
:*
T0

Nbert/encoder/layer_4/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_4/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_4/attention/output/addNbert/encoder/layer_4/attention/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
Dbert/encoder/layer_4/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_4/attention/output/LayerNorm/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ibert/encoder/layer_4/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_4/attention/output/addDbert/encoder/layer_4/attention/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Rbert/encoder/layer_4/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
ś
@bert/encoder/layer_4/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_4/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_4/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_4/attention/output/LayerNorm/moments/variance?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_4/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_4/attention/output/add=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ö
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_4/attention/output/LayerNorm/moments/mean=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ó
=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_4/attention/output/LayerNorm/beta/read?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ů
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/shape* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
seed2 *
dtype0
ő
Obert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_4/intermediate/dense/kernel
VariableV2* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
	container *
shape:
*
dtype0
Ó
5bert/encoder/layer_4/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_4/intermediate/dense/kernelKbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
validate_shape(
Ý
3bert/encoder/layer_4/intermediate/dense/kernel/readIdentity.bert/encoder/layer_4/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias
Ę
Dbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_4/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_4/intermediate/dense/bias
VariableV2*
shared_name *?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ť
3bert/encoder/layer_4/intermediate/dense/bias/AssignAssign,bert/encoder/layer_4/intermediate/dense/bias>bert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_4/intermediate/dense/bias/readIdentity,bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias

.bert/encoder/layer_4/intermediate/dense/MatMulMatMul?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_4/intermediate/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_4/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_4/intermediate/dense/MatMul1bert/encoder/layer_4/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_4/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Ĺ
+bert/encoder/layer_4/intermediate/dense/PowPow/bert/encoder/layer_4/intermediate/dense/BiasAdd-bert/encoder/layer_4/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_4/intermediate/dense/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *'7=
Á
+bert/encoder/layer_4/intermediate/dense/mulMul-bert/encoder/layer_4/intermediate/dense/mul/x+bert/encoder/layer_4/intermediate/dense/Pow*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
+bert/encoder/layer_4/intermediate/dense/addAdd/bert/encoder/layer_4/intermediate/dense/BiasAdd+bert/encoder/layer_4/intermediate/dense/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_4/intermediate/dense/mul_1/xConst*
_output_shapes
: *
valueB
 **BL?*
dtype0
Ĺ
-bert/encoder/layer_4/intermediate/dense/mul_1Mul/bert/encoder/layer_4/intermediate/dense/mul_1/x+bert/encoder/layer_4/intermediate/dense/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_4/intermediate/dense/TanhTanh-bert/encoder/layer_4/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_4/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_4/intermediate/dense/add_1Add/bert/encoder/layer_4/intermediate/dense/add_1/x,bert/encoder/layer_4/intermediate/dense/Tanh*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_4/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ç
-bert/encoder/layer_4/intermediate/dense/mul_2Mul/bert/encoder/layer_4/intermediate/dense/mul_2/x-bert/encoder/layer_4/intermediate/dense/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
-bert/encoder/layer_4/intermediate/dense/mul_3Mul/bert/encoder/layer_4/intermediate/dense/BiasAdd-bert/encoder/layer_4/intermediate/dense/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ů
Kbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel
Î
Lbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
seed2 
Ý
Ibert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel
Ë
Ebert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:

Ý
(bert/encoder/layer_4/output/dense/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
	container 
ť
/bert/encoder/layer_4/output/dense/kernel/AssignAssign(bert/encoder/layer_4/output/dense/kernelEbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ë
-bert/encoder/layer_4/output/dense/kernel/readIdentity(bert/encoder/layer_4/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_4/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_4/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
	container *
shape:
Ł
-bert/encoder/layer_4/output/dense/bias/AssignAssign&bert/encoder/layer_4/output/dense/bias8bert/encoder/layer_4/output/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias
Ŕ
+bert/encoder/layer_4/output/dense/bias/readIdentity&bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias
é
(bert/encoder/layer_4/output/dense/MatMulMatMul-bert/encoder/layer_4/intermediate/dense/mul_3-bert/encoder/layer_4/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
)bert/encoder/layer_4/output/dense/BiasAddBiasAdd(bert/encoder/layer_4/output/dense/MatMul+bert/encoder/layer_4/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
bert/encoder/layer_4/output/addAdd)bert/encoder/layer_4/output/dense/BiasAdd?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
<bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
dtype0
×
*bert/encoder/layer_4/output/LayerNorm/beta
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
	container 
ł
1bert/encoder/layer_4/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_4/output/LayerNorm/beta<bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
Ě
/bert/encoder/layer_4/output/LayerNorm/beta/readIdentity*bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta
Ë
<bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma
Ů
+bert/encoder/layer_4/output/LayerNorm/gamma
VariableV2*
shared_name *>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
ś
2bert/encoder/layer_4/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_4/output/LayerNorm/gamma<bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
validate_shape(
Ď
0bert/encoder/layer_4/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_4/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_4/output/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
đ
2bert/encoder/layer_4/output/LayerNorm/moments/meanMeanbert/encoder/layer_4/output/addDbert/encoder/layer_4/output/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
°
:bert/encoder/layer_4/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_4/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
?bert/encoder/layer_4/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_4/output/add:bert/encoder/layer_4/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Hbert/encoder/layer_4/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

6bert/encoder/layer_4/output/LayerNorm/moments/varianceMean?bert/encoder/layer_4/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_4/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
z
5bert/encoder/layer_4/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_4/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_4/output/LayerNorm/moments/variance5bert/encoder/layer_4/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_4/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_4/output/LayerNorm/batchnorm/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ö
3bert/encoder/layer_4/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_4/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_4/output/add3bert/encoder/layer_4/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ř
5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_4/output/LayerNorm/moments/mean3bert/encoder/layer_4/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ő
3bert/encoder/layer_4/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_4/output/LayerNorm/beta/read5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ű
5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_4/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_5/attention/self/ShapeShape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

7bert/encoder/layer_5/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_5/attention/self/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

9bert/encoder/layer_5/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
­
1bert/encoder/layer_5/attention/self/strided_sliceStridedSlice)bert/encoder/layer_5/attention/self/Shape7bert/encoder/layer_5/attention/self/strided_slice/stack9bert/encoder/layer_5/attention/self/strided_slice/stack_19bert/encoder/layer_5/attention/self/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
 
+bert/encoder/layer_5/attention/self/Shape_1Shape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

9bert/encoder/layer_5/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

;bert/encoder/layer_5/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_5/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_5/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_5/attention/self/Shape_19bert/encoder/layer_5/attention/self/strided_slice_1/stack;bert/encoder/layer_5/attention/self/strided_slice_1/stack_1;bert/encoder/layer_5/attention/self/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
é
Sbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
dtype0
Ţ
Tbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel
Ű
]bert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
ý
Qbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/stddev*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:
*
T0
ë
Mbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:

í
0bert/encoder/layer_5/attention/self/query/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel
Ű
7bert/encoder/layer_5/attention/self/query/kernel/AssignAssign0bert/encoder/layer_5/attention/self/query/kernelMbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ă
5bert/encoder/layer_5/attention/self/query/kernel/readIdentity0bert/encoder/layer_5/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_5/attention/self/query/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias
ß
.bert/encoder/layer_5/attention/self/query/bias
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ă
5bert/encoder/layer_5/attention/self/query/bias/AssignAssign.bert/encoder/layer_5/attention/self/query/bias@bert/encoder/layer_5/attention/self/query/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ř
3bert/encoder/layer_5/attention/self/query/bias/readIdentity.bert/encoder/layer_5/attention/self/query/bias*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_5/attention/self/query/MatMulMatMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_15bert/encoder/layer_5/attention/self/query/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
í
1bert/encoder/layer_5/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_5/attention/self/query/MatMul3bert/encoder/layer_5/attention/self/query/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel
Ř
Pbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
dtype0
Ő
[bert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
seed2 
ő
Obert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:

é
.bert/encoder/layer_5/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
	container *
shape:

Ó
5bert/encoder/layer_5/attention/self/key/kernel/AssignAssign.bert/encoder/layer_5/attention/self/key/kernelKbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel
Ý
3bert/encoder/layer_5/attention/self/key/kernel/readIdentity.bert/encoder/layer_5/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_5/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_5/attention/self/key/bias
VariableV2*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
	container *
shape:*
dtype0
ť
3bert/encoder/layer_5/attention/self/key/bias/AssignAssign,bert/encoder/layer_5/attention/self/key/bias>bert/encoder/layer_5/attention/self/key/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_5/attention/self/key/bias/readIdentity,bert/encoder/layer_5/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:
ý
.bert/encoder/layer_5/attention/self/key/MatMulMatMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_13bert/encoder/layer_5/attention/self/key/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_5/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_5/attention/self/key/MatMul1bert/encoder/layer_5/attention/self/key/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
Sbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel
Ţ
Tbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
seed2 
ý
Qbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel
ë
Mbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel
í
0bert/encoder/layer_5/attention/self/value/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
	container *
shape:

Ű
7bert/encoder/layer_5/attention/self/value/kernel/AssignAssign0bert/encoder/layer_5/attention/self/value/kernelMbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_5/attention/self/value/kernel/readIdentity0bert/encoder/layer_5/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_5/attention/self/value/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
dtype0
ß
.bert/encoder/layer_5/attention/self/value/bias
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ă
5bert/encoder/layer_5/attention/self/value/bias/AssignAssign.bert/encoder/layer_5/attention/self/value/bias@bert/encoder/layer_5/attention/self/value/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
validate_shape(
Ř
3bert/encoder/layer_5/attention/self/value/bias/readIdentity.bert/encoder/layer_5/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
_output_shapes	
:

0bert/encoder/layer_5/attention/self/value/MatMulMatMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_15bert/encoder/layer_5/attention/self/value/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
í
1bert/encoder/layer_5/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_5/attention/self/value/MatMul3bert/encoder/layer_5/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
3bert/encoder/layer_5/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_5/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_5/attention/self/Reshape/shape/3Const*
_output_shapes
: *
value	B :@*
dtype0
°
1bert/encoder/layer_5/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_5/attention/self/Reshape/shape/13bert/encoder/layer_5/attention/self/Reshape/shape/23bert/encoder/layer_5/attention/self/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
ĺ
+bert/encoder/layer_5/attention/self/ReshapeReshape1bert/encoder/layer_5/attention/self/query/BiasAdd1bert/encoder/layer_5/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

2bert/encoder/layer_5/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ă
-bert/encoder/layer_5/attention/self/transpose	Transpose+bert/encoder/layer_5/attention/self/Reshape2bert/encoder/layer_5/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
x
5bert/encoder/layer_5/attention/self/Reshape_1/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
w
5bert/encoder/layer_5/attention/self/Reshape_1/shape/2Const*
_output_shapes
: *
value	B :*
dtype0
w
5bert/encoder/layer_5/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_5/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_5/attention/self/Reshape_1/shape/15bert/encoder/layer_5/attention/self/Reshape_1/shape/25bert/encoder/layer_5/attention/self/Reshape_1/shape/3*
_output_shapes
:*
T0*

axis *
N
ç
-bert/encoder/layer_5/attention/self/Reshape_1Reshape/bert/encoder/layer_5/attention/self/key/BiasAdd3bert/encoder/layer_5/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_5/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_5/attention/self/transpose_1	Transpose-bert/encoder/layer_5/attention/self/Reshape_14bert/encoder/layer_5/attention/self/transpose_1/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ń
*bert/encoder/layer_5/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_5/attention/self/transpose/bert/encoder/layer_5/attention/self/transpose_1*
adj_x( *
adj_y(*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_5/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Á
'bert/encoder/layer_5/attention/self/MulMul*bert/encoder/layer_5/attention/self/MatMul)bert/encoder/layer_5/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_5/attention/self/ExpandDims/dimConst*
_output_shapes
:*
valueB:*
dtype0
Ę
.bert/encoder/layer_5/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_5/attention/self/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_5/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
'bert/encoder/layer_5/attention/self/subSub)bert/encoder/layer_5/attention/self/sub/x.bert/encoder/layer_5/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_5/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_5/attention/self/mul_1Mul'bert/encoder/layer_5/attention/self/sub+bert/encoder/layer_5/attention/self/mul_1/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
'bert/encoder/layer_5/attention/self/addAdd'bert/encoder/layer_5/attention/self/Mul)bert/encoder/layer_5/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_5/attention/self/SoftmaxSoftmax'bert/encoder/layer_5/attention/self/add*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
5bert/encoder/layer_5/attention/self/Reshape_2/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
w
5bert/encoder/layer_5/attention/self/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_5/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_5/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_5/attention/self/Reshape_2/shape/15bert/encoder/layer_5/attention/self/Reshape_2/shape/25bert/encoder/layer_5/attention/self/Reshape_2/shape/3*
T0*

axis *
N*
_output_shapes
:
é
-bert/encoder/layer_5/attention/self/Reshape_2Reshape1bert/encoder/layer_5/attention/self/value/BiasAdd3bert/encoder/layer_5/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_5/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_5/attention/self/transpose_2	Transpose-bert/encoder/layer_5/attention/self/Reshape_24bert/encoder/layer_5/attention/self/transpose_2/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
đ
,bert/encoder/layer_5/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_5/attention/self/Softmax/bert/encoder/layer_5/attention/self/transpose_2*
adj_x( *
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_5/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
č
/bert/encoder/layer_5/attention/self/transpose_3	Transpose,bert/encoder/layer_5/attention/self/MatMul_14bert/encoder/layer_5/attention/self/transpose_3/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
n
+bert/encoder/layer_5/attention/self/mul_2/yConst*
_output_shapes
: *
value
B :*
dtype0

)bert/encoder/layer_5/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_5/attention/self/mul_2/y*
_output_shapes
: *
T0
x
5bert/encoder/layer_5/attention/self/Reshape_3/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
×
3bert/encoder/layer_5/attention/self/Reshape_3/shapePack)bert/encoder/layer_5/attention/self/mul_25bert/encoder/layer_5/attention/self/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ß
-bert/encoder/layer_5/attention/self/Reshape_3Reshape/bert/encoder/layer_5/attention/self/transpose_33bert/encoder/layer_5/attention/self/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Ubert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
seed2 

Sbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/stddev*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:
*
T0
ó
Obert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel
ń
2bert/encoder/layer_5/attention/output/dense/kernel
VariableV2*
shared_name *E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ă
9bert/encoder/layer_5/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_5/attention/output/dense/kernelObert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

é
7bert/encoder/layer_5/attention/output/dense/kernel/readIdentity2bert/encoder/layer_5/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_5/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
dtype0*
_output_shapes	
:
ă
0bert/encoder/layer_5/attention/output/dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
	container 
Ë
7bert/encoder/layer_5/attention/output/dense/bias/AssignAssign0bert/encoder/layer_5/attention/output/dense/biasBbert/encoder/layer_5/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ţ
5bert/encoder/layer_5/attention/output/dense/bias/readIdentity0bert/encoder/layer_5/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes	
:
ý
2bert/encoder/layer_5/attention/output/dense/MatMulMatMul-bert/encoder/layer_5/attention/self/Reshape_37bert/encoder/layer_5/attention/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ó
3bert/encoder/layer_5/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_5/attention/output/dense/MatMul5bert/encoder/layer_5/attention/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
)bert/encoder/layer_5/attention/output/addAdd3bert/encoder/layer_5/attention/output/dense/BiasAdd5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_5/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ű
;bert/encoder/layer_5/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_5/attention/output/LayerNorm/betaFbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zeros*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ę
9bert/encoder/layer_5/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta
ß
Fbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_5/attention/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
	container *
shape:
Ţ
<bert/encoder/layer_5/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_5/attention/output/LayerNorm/gammaFbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/ones*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
í
:bert/encoder/layer_5/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma

Nbert/encoder/layer_5/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_5/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_5/attention/output/addNbert/encoder/layer_5/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
Ä
Dbert/encoder/layer_5/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_5/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_5/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_5/attention/output/addDbert/encoder/layer_5/attention/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_5/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ś
@bert/encoder/layer_5/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_5/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_5/attention/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ěź+
ů
=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_5/attention/output/LayerNorm/moments/variance?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
š
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_5/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_5/attention/output/add=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_5/attention/output/LayerNorm/moments/mean=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_5/attention/output/LayerNorm/beta/read?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
seed2 
ő
Obert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_5/intermediate/dense/kernel
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ó
5bert/encoder/layer_5/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_5/intermediate/dense/kernelKbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_5/intermediate/dense/kernel/readIdentity.bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel
Ú
Nbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ę
Dbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_5/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_5/intermediate/dense/bias
VariableV2*
shared_name *?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ť
3bert/encoder/layer_5/intermediate/dense/bias/AssignAssign,bert/encoder/layer_5/intermediate/dense/bias>bert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_5/intermediate/dense/bias/readIdentity,bert/encoder/layer_5/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:

.bert/encoder/layer_5/intermediate/dense/MatMulMatMul?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_5/intermediate/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_5/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_5/intermediate/dense/MatMul1bert/encoder/layer_5/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_5/intermediate/dense/Pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *  @@
Ĺ
+bert/encoder/layer_5/intermediate/dense/PowPow/bert/encoder/layer_5/intermediate/dense/BiasAdd-bert/encoder/layer_5/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_5/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_5/intermediate/dense/mulMul-bert/encoder/layer_5/intermediate/dense/mul/x+bert/encoder/layer_5/intermediate/dense/Pow*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
+bert/encoder/layer_5/intermediate/dense/addAdd/bert/encoder/layer_5/intermediate/dense/BiasAdd+bert/encoder/layer_5/intermediate/dense/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_5/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Ĺ
-bert/encoder/layer_5/intermediate/dense/mul_1Mul/bert/encoder/layer_5/intermediate/dense/mul_1/x+bert/encoder/layer_5/intermediate/dense/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

,bert/encoder/layer_5/intermediate/dense/TanhTanh-bert/encoder/layer_5/intermediate/dense/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_5/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_5/intermediate/dense/add_1Add/bert/encoder/layer_5/intermediate/dense/add_1/x,bert/encoder/layer_5/intermediate/dense/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_5/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ç
-bert/encoder/layer_5/intermediate/dense/mul_2Mul/bert/encoder/layer_5/intermediate/dense/mul_2/x-bert/encoder/layer_5/intermediate/dense/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
-bert/encoder/layer_5/intermediate/dense/mul_3Mul/bert/encoder/layer_5/intermediate/dense/BiasAdd-bert/encoder/layer_5/intermediate/dense/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Kbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/shape* 
_output_shapes
:
*

seed *
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
seed2 *
dtype0
Ý
Ibert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel
Ë
Ebert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

Ý
(bert/encoder/layer_5/output/dense/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
	container 
ť
/bert/encoder/layer_5/output/dense/kernel/AssignAssign(bert/encoder/layer_5/output/dense/kernelEbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ë
-bert/encoder/layer_5/output/dense/kernel/readIdentity(bert/encoder/layer_5/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_5/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_5/output/dense/bias
VariableV2*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ł
-bert/encoder/layer_5/output/dense/bias/AssignAssign&bert/encoder/layer_5/output/dense/bias8bert/encoder/layer_5/output/dense/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ŕ
+bert/encoder/layer_5/output/dense/bias/readIdentity&bert/encoder/layer_5/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
_output_shapes	
:
é
(bert/encoder/layer_5/output/dense/MatMulMatMul-bert/encoder/layer_5/intermediate/dense/mul_3-bert/encoder/layer_5/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
)bert/encoder/layer_5/output/dense/BiasAddBiasAdd(bert/encoder/layer_5/output/dense/MatMul+bert/encoder/layer_5/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
bert/encoder/layer_5/output/addAdd)bert/encoder/layer_5/output/dense/BiasAdd?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
<bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta
×
*bert/encoder/layer_5/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ł
1bert/encoder/layer_5/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_5/output/LayerNorm/beta<bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zeros*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ě
/bert/encoder/layer_5/output/LayerNorm/beta/readIdentity*bert/encoder/layer_5/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ů
+bert/encoder/layer_5/output/LayerNorm/gamma
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
	container 
ś
2bert/encoder/layer_5/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_5/output/LayerNorm/gamma<bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ď
0bert/encoder/layer_5/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_5/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_5/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
đ
2bert/encoder/layer_5/output/LayerNorm/moments/meanMeanbert/encoder/layer_5/output/addDbert/encoder/layer_5/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
:bert/encoder/layer_5/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_5/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
?bert/encoder/layer_5/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_5/output/add:bert/encoder/layer_5/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_5/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_5/output/LayerNorm/moments/varianceMean?bert/encoder/layer_5/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_5/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
z
5bert/encoder/layer_5/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_5/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_5/output/LayerNorm/moments/variance5bert/encoder/layer_5/output/LayerNorm/batchnorm/add/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
5bert/encoder/layer_5/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_5/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
3bert/encoder/layer_5/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_5/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_5/output/add3bert/encoder/layer_5/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_5/output/LayerNorm/moments/mean3bert/encoder/layer_5/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ő
3bert/encoder/layer_5/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_5/output/LayerNorm/beta/read5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ű
5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_5/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_6/attention/self/ShapeShape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
out_type0*
_output_shapes
:*
T0

7bert/encoder/layer_6/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_6/attention/self/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9bert/encoder/layer_6/attention/self/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
­
1bert/encoder/layer_6/attention/self/strided_sliceStridedSlice)bert/encoder/layer_6/attention/self/Shape7bert/encoder/layer_6/attention/self/strided_slice/stack9bert/encoder/layer_6/attention/self/strided_slice/stack_19bert/encoder/layer_6/attention/self/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
 
+bert/encoder/layer_6/attention/self/Shape_1Shape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0

9bert/encoder/layer_6/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0

;bert/encoder/layer_6/attention/self/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

;bert/encoder/layer_6/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_6/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_6/attention/self/Shape_19bert/encoder/layer_6/attention/self/strided_slice_1/stack;bert/encoder/layer_6/attention/self/strided_slice_1/stack_1;bert/encoder/layer_6/attention/self/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
é
Sbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
dtype0
Ü
Rbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
dtype0
Ţ
Tbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
seed2 
ý
Qbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel
ë
Mbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel
í
0bert/encoder/layer_6/attention/self/query/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
	container *
shape:

Ű
7bert/encoder/layer_6/attention/self/query/kernel/AssignAssign0bert/encoder/layer_6/attention/self/query/kernelMbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
validate_shape(
ă
5bert/encoder/layer_6/attention/self/query/kernel/readIdentity0bert/encoder/layer_6/attention/self/query/kernel*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:
*
T0
Ň
@bert/encoder/layer_6/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_6/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
	container *
shape:
Ă
5bert/encoder/layer_6/attention/self/query/bias/AssignAssign.bert/encoder/layer_6/attention/self/query/bias@bert/encoder/layer_6/attention/self/query/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
validate_shape(
Ř
3bert/encoder/layer_6/attention/self/query/bias/readIdentity.bert/encoder/layer_6/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
_output_shapes	
:

0bert/encoder/layer_6/attention/self/query/MatMulMatMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_15bert/encoder/layer_6/attention/self/query/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
í
1bert/encoder/layer_6/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_6/attention/self/query/MatMul3bert/encoder/layer_6/attention/self/query/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/shape* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
seed2 *
dtype0
ő
Obert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel
é
.bert/encoder/layer_6/attention/self/key/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ó
5bert/encoder/layer_6/attention/self/key/kernel/AssignAssign.bert/encoder/layer_6/attention/self/key/kernelKbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_6/attention/self/key/kernel/readIdentity.bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel
Î
>bert/encoder/layer_6/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_6/attention/self/key/bias
VariableV2*
shared_name *?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ť
3bert/encoder/layer_6/attention/self/key/bias/AssignAssign,bert/encoder/layer_6/attention/self/key/bias>bert/encoder/layer_6/attention/self/key/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_6/attention/self/key/bias/readIdentity,bert/encoder/layer_6/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
_output_shapes	
:
ý
.bert/encoder/layer_6/attention/self/key/MatMulMatMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_13bert/encoder/layer_6/attention/self/key/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ç
/bert/encoder/layer_6/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_6/attention/self/key/MatMul1bert/encoder/layer_6/attention/self/key/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
é
Sbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel
Ü
Rbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
ý
Qbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel
í
0bert/encoder/layer_6/attention/self/value/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
	container *
shape:

Ű
7bert/encoder/layer_6/attention/self/value/kernel/AssignAssign0bert/encoder/layer_6/attention/self/value/kernelMbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ă
5bert/encoder/layer_6/attention/self/value/kernel/readIdentity0bert/encoder/layer_6/attention/self/value/kernel*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:
*
T0
Ň
@bert/encoder/layer_6/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_6/attention/self/value/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias
Ă
5bert/encoder/layer_6/attention/self/value/bias/AssignAssign.bert/encoder/layer_6/attention/self/value/bias@bert/encoder/layer_6/attention/self/value/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_6/attention/self/value/bias/readIdentity.bert/encoder/layer_6/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
_output_shapes	
:

0bert/encoder/layer_6/attention/self/value/MatMulMatMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_15bert/encoder/layer_6/attention/self/value/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
í
1bert/encoder/layer_6/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_6/attention/self/value/MatMul3bert/encoder/layer_6/attention/self/value/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
v
3bert/encoder/layer_6/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_6/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_6/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
°
1bert/encoder/layer_6/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_6/attention/self/Reshape/shape/13bert/encoder/layer_6/attention/self/Reshape/shape/23bert/encoder/layer_6/attention/self/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
ĺ
+bert/encoder/layer_6/attention/self/ReshapeReshape1bert/encoder/layer_6/attention/self/query/BiasAdd1bert/encoder/layer_6/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

2bert/encoder/layer_6/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ă
-bert/encoder/layer_6/attention/self/transpose	Transpose+bert/encoder/layer_6/attention/self/Reshape2bert/encoder/layer_6/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
x
5bert/encoder/layer_6/attention/self/Reshape_1/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
w
5bert/encoder/layer_6/attention/self/Reshape_1/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
w
5bert/encoder/layer_6/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_6/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_6/attention/self/Reshape_1/shape/15bert/encoder/layer_6/attention/self/Reshape_1/shape/25bert/encoder/layer_6/attention/self/Reshape_1/shape/3*
T0*

axis *
N*
_output_shapes
:
ç
-bert/encoder/layer_6/attention/self/Reshape_1Reshape/bert/encoder/layer_6/attention/self/key/BiasAdd3bert/encoder/layer_6/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_6/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_6/attention/self/transpose_1	Transpose-bert/encoder/layer_6/attention/self/Reshape_14bert/encoder/layer_6/attention/self/transpose_1/perm*
Tperm0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ń
*bert/encoder/layer_6/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_6/attention/self/transpose/bert/encoder/layer_6/attention/self/transpose_1*
adj_y(*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
adj_x( 
n
)bert/encoder/layer_6/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Á
'bert/encoder/layer_6/attention/self/MulMul*bert/encoder/layer_6/attention/self/MatMul)bert/encoder/layer_6/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_6/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ę
.bert/encoder/layer_6/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_6/attention/self/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_6/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
'bert/encoder/layer_6/attention/self/subSub)bert/encoder/layer_6/attention/self/sub/x.bert/encoder/layer_6/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_6/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_6/attention/self/mul_1Mul'bert/encoder/layer_6/attention/self/sub+bert/encoder/layer_6/attention/self/mul_1/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
'bert/encoder/layer_6/attention/self/addAdd'bert/encoder/layer_6/attention/self/Mul)bert/encoder/layer_6/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_6/attention/self/SoftmaxSoftmax'bert/encoder/layer_6/attention/self/add*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
5bert/encoder/layer_6/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_6/attention/self/Reshape_2/shape/2Const*
_output_shapes
: *
value	B :*
dtype0
w
5bert/encoder/layer_6/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_6/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_6/attention/self/Reshape_2/shape/15bert/encoder/layer_6/attention/self/Reshape_2/shape/25bert/encoder/layer_6/attention/self/Reshape_2/shape/3*
T0*

axis *
N*
_output_shapes
:
é
-bert/encoder/layer_6/attention/self/Reshape_2Reshape1bert/encoder/layer_6/attention/self/value/BiasAdd3bert/encoder/layer_6/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_6/attention/self/transpose_2/permConst*
_output_shapes
:*%
valueB"             *
dtype0
é
/bert/encoder/layer_6/attention/self/transpose_2	Transpose-bert/encoder/layer_6/attention/self/Reshape_24bert/encoder/layer_6/attention/self/transpose_2/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
đ
,bert/encoder/layer_6/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_6/attention/self/Softmax/bert/encoder/layer_6/attention/self/transpose_2*
adj_x( *
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_6/attention/self/transpose_3/permConst*
_output_shapes
:*%
valueB"             *
dtype0
č
/bert/encoder/layer_6/attention/self/transpose_3	Transpose,bert/encoder/layer_6/attention/self/MatMul_14bert/encoder/layer_6/attention/self/transpose_3/perm*
Tperm0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
n
+bert/encoder/layer_6/attention/self/mul_2/yConst*
dtype0*
_output_shapes
: *
value
B :

)bert/encoder/layer_6/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_6/attention/self/mul_2/y*
_output_shapes
: *
T0
x
5bert/encoder/layer_6/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_6/attention/self/Reshape_3/shapePack)bert/encoder/layer_6/attention/self/mul_25bert/encoder/layer_6/attention/self/Reshape_3/shape/1*
_output_shapes
:*
T0*

axis *
N
ß
-bert/encoder/layer_6/attention/self/Reshape_3Reshape/bert/encoder/layer_6/attention/self/transpose_33bert/encoder/layer_6/attention/self/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Ubert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel
â
Vbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
seed2 

Sbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

ń
2bert/encoder/layer_6/attention/output/dense/kernel
VariableV2*
shared_name *E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ă
9bert/encoder/layer_6/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_6/attention/output/dense/kernelObert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

é
7bert/encoder/layer_6/attention/output/dense/kernel/readIdentity2bert/encoder/layer_6/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_6/attention/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias
ă
0bert/encoder/layer_6/attention/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
	container *
shape:
Ë
7bert/encoder/layer_6/attention/output/dense/bias/AssignAssign0bert/encoder/layer_6/attention/output/dense/biasBbert/encoder/layer_6/attention/output/dense/bias/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ţ
5bert/encoder/layer_6/attention/output/dense/bias/readIdentity0bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias
ý
2bert/encoder/layer_6/attention/output/dense/MatMulMatMul-bert/encoder/layer_6/attention/self/Reshape_37bert/encoder/layer_6/attention/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ó
3bert/encoder/layer_6/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_6/attention/output/dense/MatMul5bert/encoder/layer_6/attention/output/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ď
)bert/encoder/layer_6/attention/output/addAdd3bert/encoder/layer_6/attention/output/dense/BiasAdd5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ţ
Fbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_6/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ű
;bert/encoder/layer_6/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_6/attention/output/LayerNorm/betaFbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ę
9bert/encoder/layer_6/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_6/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_6/attention/output/LayerNorm/gamma
VariableV2*
shared_name *H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
Ţ
<bert/encoder/layer_6/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_6/attention/output/LayerNorm/gammaFbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
í
:bert/encoder/layer_6/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_6/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_6/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

<bert/encoder/layer_6/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_6/attention/output/addNbert/encoder/layer_6/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
Ä
Dbert/encoder/layer_6/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_6/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_6/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_6/attention/output/addDbert/encoder/layer_6/attention/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_6/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
ś
@bert/encoder/layer_6/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_6/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_6/attention/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_6/attention/output/LayerNorm/moments/variance?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ô
=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_6/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_6/attention/output/add=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_6/attention/output/LayerNorm/moments/mean=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ó
=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_6/attention/output/LayerNorm/beta/read?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel
Ő
[bert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/shape* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
seed2 *
dtype0
ő
Obert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_6/intermediate/dense/kernel
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ó
5bert/encoder/layer_6/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_6/intermediate/dense/kernelKbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel
Ý
3bert/encoder/layer_6/intermediate/dense/kernel/readIdentity.bert/encoder/layer_6/intermediate/dense/kernel*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:
*
T0
Ú
Nbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ę
Dbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_6/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_6/intermediate/dense/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias
ť
3bert/encoder/layer_6/intermediate/dense/bias/AssignAssign,bert/encoder/layer_6/intermediate/dense/bias>bert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_6/intermediate/dense/bias/readIdentity,bert/encoder/layer_6/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:

.bert/encoder/layer_6/intermediate/dense/MatMulMatMul?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_6/intermediate/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_6/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_6/intermediate/dense/MatMul1bert/encoder/layer_6/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_6/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Ĺ
+bert/encoder/layer_6/intermediate/dense/PowPow/bert/encoder/layer_6/intermediate/dense/BiasAdd-bert/encoder/layer_6/intermediate/dense/Pow/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
-bert/encoder/layer_6/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_6/intermediate/dense/mulMul-bert/encoder/layer_6/intermediate/dense/mul/x+bert/encoder/layer_6/intermediate/dense/Pow*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
+bert/encoder/layer_6/intermediate/dense/addAdd/bert/encoder/layer_6/intermediate/dense/BiasAdd+bert/encoder/layer_6/intermediate/dense/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_6/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Ĺ
-bert/encoder/layer_6/intermediate/dense/mul_1Mul/bert/encoder/layer_6/intermediate/dense/mul_1/x+bert/encoder/layer_6/intermediate/dense/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_6/intermediate/dense/TanhTanh-bert/encoder/layer_6/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_6/intermediate/dense/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ć
-bert/encoder/layer_6/intermediate/dense/add_1Add/bert/encoder/layer_6/intermediate/dense/add_1/x,bert/encoder/layer_6/intermediate/dense/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_6/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ç
-bert/encoder/layer_6/intermediate/dense/mul_2Mul/bert/encoder/layer_6/intermediate/dense/mul_2/x-bert/encoder/layer_6/intermediate/dense/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
-bert/encoder/layer_6/intermediate/dense/mul_3Mul/bert/encoder/layer_6/intermediate/dense/BiasAdd-bert/encoder/layer_6/intermediate/dense/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Kbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0
Î
Lbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
Ý
Ibert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

Ý
(bert/encoder/layer_6/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
ť
/bert/encoder/layer_6/output/dense/kernel/AssignAssign(bert/encoder/layer_6/output/dense/kernelEbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
validate_shape(* 
_output_shapes
:

Ë
-bert/encoder/layer_6/output/dense/kernel/readIdentity(bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel
Â
8bert/encoder/layer_6/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_6/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
	container *
shape:
Ł
-bert/encoder/layer_6/output/dense/bias/AssignAssign&bert/encoder/layer_6/output/dense/bias8bert/encoder/layer_6/output/dense/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ŕ
+bert/encoder/layer_6/output/dense/bias/readIdentity&bert/encoder/layer_6/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
_output_shapes	
:
é
(bert/encoder/layer_6/output/dense/MatMulMatMul-bert/encoder/layer_6/intermediate/dense/mul_3-bert/encoder/layer_6/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
)bert/encoder/layer_6/output/dense/BiasAddBiasAdd(bert/encoder/layer_6/output/dense/MatMul+bert/encoder/layer_6/output/dense/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
Ĺ
bert/encoder/layer_6/output/addAdd)bert/encoder/layer_6/output/dense/BiasAdd?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
×
*bert/encoder/layer_6/output/LayerNorm/beta
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
	container 
ł
1bert/encoder/layer_6/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_6/output/LayerNorm/beta<bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
Ě
/bert/encoder/layer_6/output/LayerNorm/beta/readIdentity*bert/encoder/layer_6/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ů
+bert/encoder/layer_6/output/LayerNorm/gamma
VariableV2*
shared_name *>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
ś
2bert/encoder/layer_6/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_6/output/LayerNorm/gamma<bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
validate_shape(
Ď
0bert/encoder/layer_6/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_6/output/LayerNorm/gamma*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma

Dbert/encoder/layer_6/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
đ
2bert/encoder/layer_6/output/LayerNorm/moments/meanMeanbert/encoder/layer_6/output/addDbert/encoder/layer_6/output/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
°
:bert/encoder/layer_6/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_6/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
?bert/encoder/layer_6/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_6/output/add:bert/encoder/layer_6/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_6/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_6/output/LayerNorm/moments/varianceMean?bert/encoder/layer_6/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_6/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
z
5bert/encoder/layer_6/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_6/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_6/output/LayerNorm/moments/variance5bert/encoder/layer_6/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_6/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_6/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
3bert/encoder/layer_6/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_6/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_6/output/add3bert/encoder/layer_6/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ř
5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_6/output/LayerNorm/moments/mean3bert/encoder/layer_6/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
3bert/encoder/layer_6/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_6/output/LayerNorm/beta/read5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_6/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_7/attention/self/ShapeShape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
out_type0*
_output_shapes
:*
T0

7bert/encoder/layer_7/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_7/attention/self/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9bert/encoder/layer_7/attention/self/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1bert/encoder/layer_7/attention/self/strided_sliceStridedSlice)bert/encoder/layer_7/attention/self/Shape7bert/encoder/layer_7/attention/self/strided_slice/stack9bert/encoder/layer_7/attention/self/strided_slice/stack_19bert/encoder/layer_7/attention/self/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
 
+bert/encoder/layer_7/attention/self/Shape_1Shape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

9bert/encoder/layer_7/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

;bert/encoder/layer_7/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_7/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_7/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_7/attention/self/Shape_19bert/encoder/layer_7/attention/self/strided_slice_1/stack;bert/encoder/layer_7/attention/self/strided_slice_1/stack_1;bert/encoder/layer_7/attention/self/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
é
Sbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
seed2 
ý
Qbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mean*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:
*
T0
í
0bert/encoder/layer_7/attention/self/query/kernel
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ű
7bert/encoder/layer_7/attention/self/query/kernel/AssignAssign0bert/encoder/layer_7/attention/self/query/kernelMbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel
ă
5bert/encoder/layer_7/attention/self/query/kernel/readIdentity0bert/encoder/layer_7/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_7/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_7/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
	container *
shape:
Ă
5bert/encoder/layer_7/attention/self/query/bias/AssignAssign.bert/encoder/layer_7/attention/self/query/bias@bert/encoder/layer_7/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_7/attention/self/query/bias/readIdentity.bert/encoder/layer_7/attention/self/query/bias*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_7/attention/self/query/MatMulMatMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_15bert/encoder/layer_7/attention/self/query/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_7/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_7/attention/self/query/MatMul3bert/encoder/layer_7/attention/self/query/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
dtype0
Ú
Rbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
seed2 
ő
Obert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel
ă
Kbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

é
.bert/encoder/layer_7/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
	container *
shape:

Ó
5bert/encoder/layer_7/attention/self/key/kernel/AssignAssign.bert/encoder/layer_7/attention/self/key/kernelKbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel
Ý
3bert/encoder/layer_7/attention/self/key/kernel/readIdentity.bert/encoder/layer_7/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_7/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_7/attention/self/key/bias
VariableV2*
shared_name *?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ť
3bert/encoder/layer_7/attention/self/key/bias/AssignAssign,bert/encoder/layer_7/attention/self/key/bias>bert/encoder/layer_7/attention/self/key/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_7/attention/self/key/bias/readIdentity,bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias
ý
.bert/encoder/layer_7/attention/self/key/MatMulMatMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_13bert/encoder/layer_7/attention/self/key/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_7/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_7/attention/self/key/MatMul1bert/encoder/layer_7/attention/self/key/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
é
Sbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
dtype0
Ü
Rbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel
ý
Qbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/stddev*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:
*
T0
ë
Mbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:

í
0bert/encoder/layer_7/attention/self/value/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
	container 
Ű
7bert/encoder/layer_7/attention/self/value/kernel/AssignAssign0bert/encoder/layer_7/attention/self/value/kernelMbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel
ă
5bert/encoder/layer_7/attention/self/value/kernel/readIdentity0bert/encoder/layer_7/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_7/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_7/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
	container *
shape:
Ă
5bert/encoder/layer_7/attention/self/value/bias/AssignAssign.bert/encoder/layer_7/attention/self/value/bias@bert/encoder/layer_7/attention/self/value/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_7/attention/self/value/bias/readIdentity.bert/encoder/layer_7/attention/self/value/bias*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_7/attention/self/value/MatMulMatMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_15bert/encoder/layer_7/attention/self/value/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
í
1bert/encoder/layer_7/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_7/attention/self/value/MatMul3bert/encoder/layer_7/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
3bert/encoder/layer_7/attention/self/Reshape/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
u
3bert/encoder/layer_7/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_7/attention/self/Reshape/shape/3Const*
_output_shapes
: *
value	B :@*
dtype0
°
1bert/encoder/layer_7/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_7/attention/self/Reshape/shape/13bert/encoder/layer_7/attention/self/Reshape/shape/23bert/encoder/layer_7/attention/self/Reshape/shape/3*

axis *
N*
_output_shapes
:*
T0
ĺ
+bert/encoder/layer_7/attention/self/ReshapeReshape1bert/encoder/layer_7/attention/self/query/BiasAdd1bert/encoder/layer_7/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

2bert/encoder/layer_7/attention/self/transpose/permConst*
_output_shapes
:*%
valueB"             *
dtype0
ă
-bert/encoder/layer_7/attention/self/transpose	Transpose+bert/encoder/layer_7/attention/self/Reshape2bert/encoder/layer_7/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
x
5bert/encoder/layer_7/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_7/attention/self/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_7/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_7/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_7/attention/self/Reshape_1/shape/15bert/encoder/layer_7/attention/self/Reshape_1/shape/25bert/encoder/layer_7/attention/self/Reshape_1/shape/3*
T0*

axis *
N*
_output_shapes
:
ç
-bert/encoder/layer_7/attention/self/Reshape_1Reshape/bert/encoder/layer_7/attention/self/key/BiasAdd3bert/encoder/layer_7/attention/self/Reshape_1/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
Tshape0

4bert/encoder/layer_7/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_7/attention/self/transpose_1	Transpose-bert/encoder/layer_7/attention/self/Reshape_14bert/encoder/layer_7/attention/self/transpose_1/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ń
*bert/encoder/layer_7/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_7/attention/self/transpose/bert/encoder/layer_7/attention/self/transpose_1*
adj_x( *
adj_y(*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_7/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Á
'bert/encoder/layer_7/attention/self/MulMul*bert/encoder/layer_7/attention/self/MatMul)bert/encoder/layer_7/attention/self/Mul/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
|
2bert/encoder/layer_7/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ę
.bert/encoder/layer_7/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_7/attention/self/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_7/attention/self/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Ĺ
'bert/encoder/layer_7/attention/self/subSub)bert/encoder/layer_7/attention/self/sub/x.bert/encoder/layer_7/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_7/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_7/attention/self/mul_1Mul'bert/encoder/layer_7/attention/self/sub+bert/encoder/layer_7/attention/self/mul_1/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
'bert/encoder/layer_7/attention/self/addAdd'bert/encoder/layer_7/attention/self/Mul)bert/encoder/layer_7/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_7/attention/self/SoftmaxSoftmax'bert/encoder/layer_7/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5bert/encoder/layer_7/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_7/attention/self/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_7/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_7/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_7/attention/self/Reshape_2/shape/15bert/encoder/layer_7/attention/self/Reshape_2/shape/25bert/encoder/layer_7/attention/self/Reshape_2/shape/3*

axis *
N*
_output_shapes
:*
T0
é
-bert/encoder/layer_7/attention/self/Reshape_2Reshape1bert/encoder/layer_7/attention/self/value/BiasAdd3bert/encoder/layer_7/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_7/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_7/attention/self/transpose_2	Transpose-bert/encoder/layer_7/attention/self/Reshape_24bert/encoder/layer_7/attention/self/transpose_2/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
đ
,bert/encoder/layer_7/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_7/attention/self/Softmax/bert/encoder/layer_7/attention/self/transpose_2*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
adj_x( *
adj_y( 

4bert/encoder/layer_7/attention/self/transpose_3/permConst*
_output_shapes
:*%
valueB"             *
dtype0
č
/bert/encoder/layer_7/attention/self/transpose_3	Transpose,bert/encoder/layer_7/attention/self/MatMul_14bert/encoder/layer_7/attention/self/transpose_3/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
n
+bert/encoder/layer_7/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

)bert/encoder/layer_7/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_7/attention/self/mul_2/y*
T0*
_output_shapes
: 
x
5bert/encoder/layer_7/attention/self/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
×
3bert/encoder/layer_7/attention/self/Reshape_3/shapePack)bert/encoder/layer_7/attention/self/mul_25bert/encoder/layer_7/attention/self/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ß
-bert/encoder/layer_7/attention/self/Reshape_3Reshape/bert/encoder/layer_7/attention/self/transpose_33bert/encoder/layer_7/attention/self/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Ubert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
seed2 

Sbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel
ó
Obert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mean*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:
*
T0
ń
2bert/encoder/layer_7/attention/output/dense/kernel
VariableV2*
shared_name *E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ă
9bert/encoder/layer_7/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_7/attention/output/dense/kernelObert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
é
7bert/encoder/layer_7/attention/output/dense/kernel/readIdentity2bert/encoder/layer_7/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_7/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
dtype0*
_output_shapes	
:
ă
0bert/encoder/layer_7/attention/output/dense/bias
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ë
7bert/encoder/layer_7/attention/output/dense/bias/AssignAssign0bert/encoder/layer_7/attention/output/dense/biasBbert/encoder/layer_7/attention/output/dense/bias/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ţ
5bert/encoder/layer_7/attention/output/dense/bias/readIdentity0bert/encoder/layer_7/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes	
:
ý
2bert/encoder/layer_7/attention/output/dense/MatMulMatMul-bert/encoder/layer_7/attention/self/Reshape_37bert/encoder/layer_7/attention/output/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ó
3bert/encoder/layer_7/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_7/attention/output/dense/MatMul5bert/encoder/layer_7/attention/output/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ď
)bert/encoder/layer_7/attention/output/addAdd3bert/encoder/layer_7/attention/output/dense/BiasAdd5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_7/attention/output/LayerNorm/beta
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
	container 
Ű
;bert/encoder/layer_7/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_7/attention/output/LayerNorm/betaFbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zeros*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ę
9bert/encoder/layer_7/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_7/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma
í
5bert/encoder/layer_7/attention/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
	container *
shape:
Ţ
<bert/encoder/layer_7/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_7/attention/output/LayerNorm/gammaFbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
í
:bert/encoder/layer_7/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma

Nbert/encoder/layer_7/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_7/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_7/attention/output/addNbert/encoder/layer_7/attention/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
Dbert/encoder/layer_7/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_7/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_7/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_7/attention/output/addDbert/encoder/layer_7/attention/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Rbert/encoder/layer_7/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
ś
@bert/encoder/layer_7/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_7/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_7/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ěź+
ů
=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_7/attention/output/LayerNorm/moments/variance?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
š
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_7/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_7/attention/output/add=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_7/attention/output/LayerNorm/moments/mean=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_7/attention/output/LayerNorm/beta/read?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel
ő
Obert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel
é
.bert/encoder/layer_7/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ó
5bert/encoder/layer_7/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_7/intermediate/dense/kernelKbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel
Ý
3bert/encoder/layer_7/intermediate/dense/kernel/readIdentity.bert/encoder/layer_7/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ę
Dbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_7/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/Const*

index_type0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:*
T0
Ű
,bert/encoder/layer_7/intermediate/dense/bias
VariableV2*
shared_name *?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ť
3bert/encoder/layer_7/intermediate/dense/bias/AssignAssign,bert/encoder/layer_7/intermediate/dense/bias>bert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias
Ň
1bert/encoder/layer_7/intermediate/dense/bias/readIdentity,bert/encoder/layer_7/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:

.bert/encoder/layer_7/intermediate/dense/MatMulMatMul?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_7/intermediate/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_7/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_7/intermediate/dense/MatMul1bert/encoder/layer_7/intermediate/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
-bert/encoder/layer_7/intermediate/dense/Pow/yConst*
_output_shapes
: *
valueB
 *  @@*
dtype0
Ĺ
+bert/encoder/layer_7/intermediate/dense/PowPow/bert/encoder/layer_7/intermediate/dense/BiasAdd-bert/encoder/layer_7/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_7/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_7/intermediate/dense/mulMul-bert/encoder/layer_7/intermediate/dense/mul/x+bert/encoder/layer_7/intermediate/dense/Pow*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
+bert/encoder/layer_7/intermediate/dense/addAdd/bert/encoder/layer_7/intermediate/dense/BiasAdd+bert/encoder/layer_7/intermediate/dense/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_7/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Ĺ
-bert/encoder/layer_7/intermediate/dense/mul_1Mul/bert/encoder/layer_7/intermediate/dense/mul_1/x+bert/encoder/layer_7/intermediate/dense/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

,bert/encoder/layer_7/intermediate/dense/TanhTanh-bert/encoder/layer_7/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_7/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_7/intermediate/dense/add_1Add/bert/encoder/layer_7/intermediate/dense/add_1/x,bert/encoder/layer_7/intermediate/dense/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_7/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ç
-bert/encoder/layer_7/intermediate/dense/mul_2Mul/bert/encoder/layer_7/intermediate/dense/mul_2/x-bert/encoder/layer_7/intermediate/dense/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
-bert/encoder/layer_7/intermediate/dense/mul_3Mul/bert/encoder/layer_7/intermediate/dense/BiasAdd-bert/encoder/layer_7/intermediate/dense/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Kbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
dtype0
Ě
Jbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel
Î
Lbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
seed2 
Ý
Ibert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

Ý
(bert/encoder/layer_7/output/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
	container *
shape:

ť
/bert/encoder/layer_7/output/dense/kernel/AssignAssign(bert/encoder/layer_7/output/dense/kernelEbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
validate_shape(* 
_output_shapes
:

Ë
-bert/encoder/layer_7/output/dense/kernel/readIdentity(bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel
Â
8bert/encoder/layer_7/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_7/output/dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
	container 
Ł
-bert/encoder/layer_7/output/dense/bias/AssignAssign&bert/encoder/layer_7/output/dense/bias8bert/encoder/layer_7/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
validate_shape(
Ŕ
+bert/encoder/layer_7/output/dense/bias/readIdentity&bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias
é
(bert/encoder/layer_7/output/dense/MatMulMatMul-bert/encoder/layer_7/intermediate/dense/mul_3-bert/encoder/layer_7/output/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ő
)bert/encoder/layer_7/output/dense/BiasAddBiasAdd(bert/encoder/layer_7/output/dense/MatMul+bert/encoder/layer_7/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
bert/encoder/layer_7/output/addAdd)bert/encoder/layer_7/output/dense/BiasAdd?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
<bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
×
*bert/encoder/layer_7/output/LayerNorm/beta
VariableV2*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
	container *
shape:*
dtype0
ł
1bert/encoder/layer_7/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_7/output/LayerNorm/beta<bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zeros*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ě
/bert/encoder/layer_7/output/LayerNorm/beta/readIdentity*bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta
Ë
<bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma
Ů
+bert/encoder/layer_7/output/LayerNorm/gamma
VariableV2*
_output_shapes	
:*
shared_name *>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
	container *
shape:*
dtype0
ś
2bert/encoder/layer_7/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_7/output/LayerNorm/gamma<bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
Ď
0bert/encoder/layer_7/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma

Dbert/encoder/layer_7/output/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
đ
2bert/encoder/layer_7/output/LayerNorm/moments/meanMeanbert/encoder/layer_7/output/addDbert/encoder/layer_7/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
:bert/encoder/layer_7/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_7/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
?bert/encoder/layer_7/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_7/output/add:bert/encoder/layer_7/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Hbert/encoder/layer_7/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_7/output/LayerNorm/moments/varianceMean?bert/encoder/layer_7/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_7/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
z
5bert/encoder/layer_7/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_7/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_7/output/LayerNorm/moments/variance5bert/encoder/layer_7/output/LayerNorm/batchnorm/add/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
5bert/encoder/layer_7/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_7/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
3bert/encoder/layer_7/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_7/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_7/output/add3bert/encoder/layer_7/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_7/output/LayerNorm/moments/mean3bert/encoder/layer_7/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ő
3bert/encoder/layer_7/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_7/output/LayerNorm/beta/read5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_7/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_8/attention/self/ShapeShape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0

7bert/encoder/layer_8/attention/self/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

9bert/encoder/layer_8/attention/self/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9bert/encoder/layer_8/attention/self/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1bert/encoder/layer_8/attention/self/strided_sliceStridedSlice)bert/encoder/layer_8/attention/self/Shape7bert/encoder/layer_8/attention/self/strided_slice/stack9bert/encoder/layer_8/attention/self/strided_slice/stack_19bert/encoder/layer_8/attention/self/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
 
+bert/encoder/layer_8/attention/self/Shape_1Shape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0

9bert/encoder/layer_8/attention/self/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 

;bert/encoder/layer_8/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_8/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_8/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_8/attention/self/Shape_19bert/encoder/layer_8/attention/self/strided_slice_1/stack;bert/encoder/layer_8/attention/self/strided_slice_1/stack_1;bert/encoder/layer_8/attention/self/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
é
Sbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel
Ű
]bert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
seed2 
ý
Qbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

í
0bert/encoder/layer_8/attention/self/query/kernel
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ű
7bert/encoder/layer_8/attention/self/query/kernel/AssignAssign0bert/encoder/layer_8/attention/self/query/kernelMbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_8/attention/self/query/kernel/readIdentity0bert/encoder/layer_8/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_8/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_8/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
	container *
shape:
Ă
5bert/encoder/layer_8/attention/self/query/bias/AssignAssign.bert/encoder/layer_8/attention/self/query/bias@bert/encoder/layer_8/attention/self/query/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias
Ř
3bert/encoder/layer_8/attention/self/query/bias/readIdentity.bert/encoder/layer_8/attention/self/query/bias*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_8/attention/self/query/MatMulMatMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_15bert/encoder/layer_8/attention/self/query/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_8/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_8/attention/self/query/MatMul3bert/encoder/layer_8/attention/self/query/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
ő
Obert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

é
.bert/encoder/layer_8/attention/self/key/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ó
5bert/encoder/layer_8/attention/self/key/kernel/AssignAssign.bert/encoder/layer_8/attention/self/key/kernelKbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ý
3bert/encoder/layer_8/attention/self/key/kernel/readIdentity.bert/encoder/layer_8/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_8/attention/self/key/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
dtype0
Ű
,bert/encoder/layer_8/attention/self/key/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
	container 
ť
3bert/encoder/layer_8/attention/self/key/bias/AssignAssign,bert/encoder/layer_8/attention/self/key/bias>bert/encoder/layer_8/attention/self/key/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_8/attention/self/key/bias/readIdentity,bert/encoder/layer_8/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
_output_shapes	
:
ý
.bert/encoder/layer_8/attention/self/key/MatMulMatMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_13bert/encoder/layer_8/attention/self/key/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_8/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_8/attention/self/key/MatMul1bert/encoder/layer_8/attention/self/key/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
Sbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0
Ţ
Tbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
seed2 
ý
Qbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel
í
0bert/encoder/layer_8/attention/self/value/kernel
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ű
7bert/encoder/layer_8/attention/self/value/kernel/AssignAssign0bert/encoder/layer_8/attention/self/value/kernelMbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ă
5bert/encoder/layer_8/attention/self/value/kernel/readIdentity0bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel
Ň
@bert/encoder/layer_8/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_8/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
	container *
shape:
Ă
5bert/encoder/layer_8/attention/self/value/bias/AssignAssign.bert/encoder/layer_8/attention/self/value/bias@bert/encoder/layer_8/attention/self/value/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
validate_shape(
Ř
3bert/encoder/layer_8/attention/self/value/bias/readIdentity.bert/encoder/layer_8/attention/self/value/bias*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_8/attention/self/value/MatMulMatMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_15bert/encoder/layer_8/attention/self/value/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
í
1bert/encoder/layer_8/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_8/attention/self/value/MatMul3bert/encoder/layer_8/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
3bert/encoder/layer_8/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_8/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_8/attention/self/Reshape/shape/3Const*
dtype0*
_output_shapes
: *
value	B :@
°
1bert/encoder/layer_8/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_8/attention/self/Reshape/shape/13bert/encoder/layer_8/attention/self/Reshape/shape/23bert/encoder/layer_8/attention/self/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
ĺ
+bert/encoder/layer_8/attention/self/ReshapeReshape1bert/encoder/layer_8/attention/self/query/BiasAdd1bert/encoder/layer_8/attention/self/Reshape/shape*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

2bert/encoder/layer_8/attention/self/transpose/permConst*
_output_shapes
:*%
valueB"             *
dtype0
ă
-bert/encoder/layer_8/attention/self/transpose	Transpose+bert/encoder/layer_8/attention/self/Reshape2bert/encoder/layer_8/attention/self/transpose/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
x
5bert/encoder/layer_8/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_8/attention/self/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_8/attention/self/Reshape_1/shape/3Const*
dtype0*
_output_shapes
: *
value	B :@
¸
3bert/encoder/layer_8/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_8/attention/self/Reshape_1/shape/15bert/encoder/layer_8/attention/self/Reshape_1/shape/25bert/encoder/layer_8/attention/self/Reshape_1/shape/3*
_output_shapes
:*
T0*

axis *
N
ç
-bert/encoder/layer_8/attention/self/Reshape_1Reshape/bert/encoder/layer_8/attention/self/key/BiasAdd3bert/encoder/layer_8/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_8/attention/self/transpose_1/permConst*
_output_shapes
:*%
valueB"             *
dtype0
é
/bert/encoder/layer_8/attention/self/transpose_1	Transpose-bert/encoder/layer_8/attention/self/Reshape_14bert/encoder/layer_8/attention/self/transpose_1/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
ń
*bert/encoder/layer_8/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_8/attention/self/transpose/bert/encoder/layer_8/attention/self/transpose_1*
adj_x( *
adj_y(*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_8/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Á
'bert/encoder/layer_8/attention/self/MulMul*bert/encoder/layer_8/attention/self/MatMul)bert/encoder/layer_8/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_8/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ę
.bert/encoder/layer_8/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_8/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
n
)bert/encoder/layer_8/attention/self/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ĺ
'bert/encoder/layer_8/attention/self/subSub)bert/encoder/layer_8/attention/self/sub/x.bert/encoder/layer_8/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_8/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_8/attention/self/mul_1Mul'bert/encoder/layer_8/attention/self/sub+bert/encoder/layer_8/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
'bert/encoder/layer_8/attention/self/addAdd'bert/encoder/layer_8/attention/self/Mul)bert/encoder/layer_8/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_8/attention/self/SoftmaxSoftmax'bert/encoder/layer_8/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5bert/encoder/layer_8/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_8/attention/self/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_8/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_8/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_8/attention/self/Reshape_2/shape/15bert/encoder/layer_8/attention/self/Reshape_2/shape/25bert/encoder/layer_8/attention/self/Reshape_2/shape/3*
T0*

axis *
N*
_output_shapes
:
é
-bert/encoder/layer_8/attention/self/Reshape_2Reshape1bert/encoder/layer_8/attention/self/value/BiasAdd3bert/encoder/layer_8/attention/self/Reshape_2/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
Tshape0

4bert/encoder/layer_8/attention/self/transpose_2/permConst*
_output_shapes
:*%
valueB"             *
dtype0
é
/bert/encoder/layer_8/attention/self/transpose_2	Transpose-bert/encoder/layer_8/attention/self/Reshape_24bert/encoder/layer_8/attention/self/transpose_2/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
đ
,bert/encoder/layer_8/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_8/attention/self/Softmax/bert/encoder/layer_8/attention/self/transpose_2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
adj_x( *
adj_y( *
T0

4bert/encoder/layer_8/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
č
/bert/encoder/layer_8/attention/self/transpose_3	Transpose,bert/encoder/layer_8/attention/self/MatMul_14bert/encoder/layer_8/attention/self/transpose_3/perm*
Tperm0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
n
+bert/encoder/layer_8/attention/self/mul_2/yConst*
dtype0*
_output_shapes
: *
value
B :

)bert/encoder/layer_8/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_8/attention/self/mul_2/y*
T0*
_output_shapes
: 
x
5bert/encoder/layer_8/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_8/attention/self/Reshape_3/shapePack)bert/encoder/layer_8/attention/self/mul_25bert/encoder/layer_8/attention/self/Reshape_3/shape/1*

axis *
N*
_output_shapes
:*
T0
ß
-bert/encoder/layer_8/attention/self/Reshape_3Reshape/bert/encoder/layer_8/attention/self/transpose_33bert/encoder/layer_8/attention/self/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
í
Ubert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
seed2 

Sbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:

ń
2bert/encoder/layer_8/attention/output/dense/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel
ă
9bert/encoder/layer_8/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_8/attention/output/dense/kernelObert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
é
7bert/encoder/layer_8/attention/output/dense/kernel/readIdentity2bert/encoder/layer_8/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_8/attention/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias
ă
0bert/encoder/layer_8/attention/output/dense/bias
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ë
7bert/encoder/layer_8/attention/output/dense/bias/AssignAssign0bert/encoder/layer_8/attention/output/dense/biasBbert/encoder/layer_8/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ţ
5bert/encoder/layer_8/attention/output/dense/bias/readIdentity0bert/encoder/layer_8/attention/output/dense/bias*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:*
T0
ý
2bert/encoder/layer_8/attention/output/dense/MatMulMatMul-bert/encoder/layer_8/attention/self/Reshape_37bert/encoder/layer_8/attention/output/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ó
3bert/encoder/layer_8/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_8/attention/output/dense/MatMul5bert/encoder/layer_8/attention/output/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ď
)bert/encoder/layer_8/attention/output/addAdd3bert/encoder/layer_8/attention/output/dense/BiasAdd5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_8/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
	container *
shape:
Ű
;bert/encoder/layer_8/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_8/attention/output/LayerNorm/betaFbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zeros*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ę
9bert/encoder/layer_8/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_8/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_8/attention/output/LayerNorm/gamma
VariableV2*
shared_name *H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
Ţ
<bert/encoder/layer_8/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_8/attention/output/LayerNorm/gammaFbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
í
:bert/encoder/layer_8/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma

Nbert/encoder/layer_8/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_8/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_8/attention/output/addNbert/encoder/layer_8/attention/output/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
Ä
Dbert/encoder/layer_8/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_8/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_8/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_8/attention/output/addDbert/encoder/layer_8/attention/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Rbert/encoder/layer_8/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ś
@bert/encoder/layer_8/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_8/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_8/attention/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_8/attention/output/LayerNorm/moments/variance?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_8/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_8/attention/output/add=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ö
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_8/attention/output/LayerNorm/moments/mean=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ó
=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_8/attention/output/LayerNorm/beta/read?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ů
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Qbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
seed2 
ő
Obert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_8/intermediate/dense/kernel
VariableV2*
shared_name *A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ó
5bert/encoder/layer_8/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_8/intermediate/dense/kernelKbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

Ý
3bert/encoder/layer_8/intermediate/dense/kernel/readIdentity.bert/encoder/layer_8/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ę
Dbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_8/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/Const*

index_type0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:*
T0
Ű
,bert/encoder/layer_8/intermediate/dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
	container 
ť
3bert/encoder/layer_8/intermediate/dense/bias/AssignAssign,bert/encoder/layer_8/intermediate/dense/bias>bert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ň
1bert/encoder/layer_8/intermediate/dense/bias/readIdentity,bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias

.bert/encoder/layer_8/intermediate/dense/MatMulMatMul?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_8/intermediate/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ç
/bert/encoder/layer_8/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_8/intermediate/dense/MatMul1bert/encoder/layer_8/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_8/intermediate/dense/Pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *  @@
Ĺ
+bert/encoder/layer_8/intermediate/dense/PowPow/bert/encoder/layer_8/intermediate/dense/BiasAdd-bert/encoder/layer_8/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_8/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_8/intermediate/dense/mulMul-bert/encoder/layer_8/intermediate/dense/mul/x+bert/encoder/layer_8/intermediate/dense/Pow*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
+bert/encoder/layer_8/intermediate/dense/addAdd/bert/encoder/layer_8/intermediate/dense/BiasAdd+bert/encoder/layer_8/intermediate/dense/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_8/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Ĺ
-bert/encoder/layer_8/intermediate/dense/mul_1Mul/bert/encoder/layer_8/intermediate/dense/mul_1/x+bert/encoder/layer_8/intermediate/dense/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_8/intermediate/dense/TanhTanh-bert/encoder/layer_8/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_8/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_8/intermediate/dense/add_1Add/bert/encoder/layer_8/intermediate/dense/add_1/x,bert/encoder/layer_8/intermediate/dense/Tanh*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_8/intermediate/dense/mul_2/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
Ç
-bert/encoder/layer_8/intermediate/dense/mul_2Mul/bert/encoder/layer_8/intermediate/dense/mul_2/x-bert/encoder/layer_8/intermediate/dense/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
-bert/encoder/layer_8/intermediate/dense/mul_3Mul/bert/encoder/layer_8/intermediate/dense/BiasAdd-bert/encoder/layer_8/intermediate/dense/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ů
Kbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
dtype0
Î
Lbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
dtype0*
_output_shapes
: 
Ă
Ubert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
Ý
Ibert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel
Ë
Ebert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mean*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:
*
T0
Ý
(bert/encoder/layer_8/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
ť
/bert/encoder/layer_8/output/dense/kernel/AssignAssign(bert/encoder/layer_8/output/dense/kernelEbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
validate_shape(* 
_output_shapes
:

Ë
-bert/encoder/layer_8/output/dense/kernel/readIdentity(bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel
Â
8bert/encoder/layer_8/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_8/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
	container *
shape:
Ł
-bert/encoder/layer_8/output/dense/bias/AssignAssign&bert/encoder/layer_8/output/dense/bias8bert/encoder/layer_8/output/dense/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ŕ
+bert/encoder/layer_8/output/dense/bias/readIdentity&bert/encoder/layer_8/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:
é
(bert/encoder/layer_8/output/dense/MatMulMatMul-bert/encoder/layer_8/intermediate/dense/mul_3-bert/encoder/layer_8/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
)bert/encoder/layer_8/output/dense/BiasAddBiasAdd(bert/encoder/layer_8/output/dense/MatMul+bert/encoder/layer_8/output/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
bert/encoder/layer_8/output/addAdd)bert/encoder/layer_8/output/dense/BiasAdd?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
<bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
×
*bert/encoder/layer_8/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
	container *
shape:
ł
1bert/encoder/layer_8/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_8/output/LayerNorm/beta<bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zeros*
T0*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
Ě
/bert/encoder/layer_8/output/LayerNorm/beta/readIdentity*bert/encoder/layer_8/output/LayerNorm/beta*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes	
:*
T0
Ë
<bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ů
+bert/encoder/layer_8/output/LayerNorm/gamma
VariableV2*
_output_shapes	
:*
shared_name *>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
	container *
shape:*
dtype0
ś
2bert/encoder/layer_8/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_8/output/LayerNorm/gamma<bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ď
0bert/encoder/layer_8/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_8/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_8/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
đ
2bert/encoder/layer_8/output/LayerNorm/moments/meanMeanbert/encoder/layer_8/output/addDbert/encoder/layer_8/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
:bert/encoder/layer_8/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_8/output/LayerNorm/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ä
?bert/encoder/layer_8/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_8/output/add:bert/encoder/layer_8/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Hbert/encoder/layer_8/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_8/output/LayerNorm/moments/varianceMean?bert/encoder/layer_8/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_8/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
z
5bert/encoder/layer_8/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ű
3bert/encoder/layer_8/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_8/output/LayerNorm/moments/variance5bert/encoder/layer_8/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_8/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_8/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
3bert/encoder/layer_8/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_8/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_8/output/add3bert/encoder/layer_8/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_8/output/LayerNorm/moments/mean3bert/encoder/layer_8/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
3bert/encoder/layer_8/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_8/output/LayerNorm/beta/read5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_8/output/LayerNorm/batchnorm/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

)bert/encoder/layer_9/attention/self/ShapeShape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

7bert/encoder/layer_9/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9bert/encoder/layer_9/attention/self/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

9bert/encoder/layer_9/attention/self/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1bert/encoder/layer_9/attention/self/strided_sliceStridedSlice)bert/encoder/layer_9/attention/self/Shape7bert/encoder/layer_9/attention/self/strided_slice/stack9bert/encoder/layer_9/attention/self/strided_slice/stack_19bert/encoder/layer_9/attention/self/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
 
+bert/encoder/layer_9/attention/self/Shape_1Shape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

9bert/encoder/layer_9/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

;bert/encoder/layer_9/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;bert/encoder/layer_9/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
3bert/encoder/layer_9/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_9/attention/self/Shape_19bert/encoder/layer_9/attention/self/strided_slice_1/stack;bert/encoder/layer_9/attention/self/strided_slice_1/stack_1;bert/encoder/layer_9/attention/self/strided_slice_1/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask 
é
Sbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/shape*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0
ý
Qbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

í
0bert/encoder/layer_9/attention/self/query/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
	container *
shape:

Ű
7bert/encoder/layer_9/attention/self/query/kernel/AssignAssign0bert/encoder/layer_9/attention/self/query/kernelMbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_9/attention/self/query/kernel/readIdentity0bert/encoder/layer_9/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_9/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_9/attention/self/query/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
	container 
Ă
5bert/encoder/layer_9/attention/self/query/bias/AssignAssign.bert/encoder/layer_9/attention/self/query/bias@bert/encoder/layer_9/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ř
3bert/encoder/layer_9/attention/self/query/bias/readIdentity.bert/encoder/layer_9/attention/self/query/bias*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_9/attention/self/query/MatMulMatMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_15bert/encoder/layer_9/attention/self/query/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_9/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_9/attention/self/query/MatMul3bert/encoder/layer_9/attention/self/query/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ř
Pbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ő
[bert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
seed2 
ő
Obert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

é
.bert/encoder/layer_9/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
	container *
shape:

Ó
5bert/encoder/layer_9/attention/self/key/kernel/AssignAssign.bert/encoder/layer_9/attention/self/key/kernelKbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ý
3bert/encoder/layer_9/attention/self/key/kernel/readIdentity.bert/encoder/layer_9/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_9/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_9/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ť
3bert/encoder/layer_9/attention/self/key/bias/AssignAssign,bert/encoder/layer_9/attention/self/key/bias>bert/encoder/layer_9/attention/self/key/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias
Ň
1bert/encoder/layer_9/attention/self/key/bias/readIdentity,bert/encoder/layer_9/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
_output_shapes	
:
ý
.bert/encoder/layer_9/attention/self/key/MatMulMatMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_13bert/encoder/layer_9/attention/self/key/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_9/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_9/attention/self/key/MatMul1bert/encoder/layer_9/attention/self/key/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
é
Sbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
Tbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ű
]bert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
ý
Qbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel
í
0bert/encoder/layer_9/attention/self/value/kernel
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ű
7bert/encoder/layer_9/attention/self/value/kernel/AssignAssign0bert/encoder/layer_9/attention/self/value/kernelMbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ă
5bert/encoder/layer_9/attention/self/value/kernel/readIdentity0bert/encoder/layer_9/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:

Ň
@bert/encoder/layer_9/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
dtype0*
_output_shapes	
:
ß
.bert/encoder/layer_9/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
	container *
shape:
Ă
5bert/encoder/layer_9/attention/self/value/bias/AssignAssign.bert/encoder/layer_9/attention/self/value/bias@bert/encoder/layer_9/attention/self/value/bias/Initializer/zeros*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ř
3bert/encoder/layer_9/attention/self/value/bias/readIdentity.bert/encoder/layer_9/attention/self/value/bias*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
_output_shapes	
:*
T0

0bert/encoder/layer_9/attention/self/value/MatMulMatMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_15bert/encoder/layer_9/attention/self/value/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
í
1bert/encoder/layer_9/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_9/attention/self/value/MatMul3bert/encoder/layer_9/attention/self/value/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
v
3bert/encoder/layer_9/attention/self/Reshape/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
u
3bert/encoder/layer_9/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
u
3bert/encoder/layer_9/attention/self/Reshape/shape/3Const*
dtype0*
_output_shapes
: *
value	B :@
°
1bert/encoder/layer_9/attention/self/Reshape/shapePackbert/encoder/strided_slice_23bert/encoder/layer_9/attention/self/Reshape/shape/13bert/encoder/layer_9/attention/self/Reshape/shape/23bert/encoder/layer_9/attention/self/Reshape/shape/3*
N*
_output_shapes
:*
T0*

axis 
ĺ
+bert/encoder/layer_9/attention/self/ReshapeReshape1bert/encoder/layer_9/attention/self/query/BiasAdd1bert/encoder/layer_9/attention/self/Reshape/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
Tshape0

2bert/encoder/layer_9/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ă
-bert/encoder/layer_9/attention/self/transpose	Transpose+bert/encoder/layer_9/attention/self/Reshape2bert/encoder/layer_9/attention/self/transpose/perm*
Tperm0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
x
5bert/encoder/layer_9/attention/self/Reshape_1/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
w
5bert/encoder/layer_9/attention/self/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_9/attention/self/Reshape_1/shape/3Const*
dtype0*
_output_shapes
: *
value	B :@
¸
3bert/encoder/layer_9/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_25bert/encoder/layer_9/attention/self/Reshape_1/shape/15bert/encoder/layer_9/attention/self/Reshape_1/shape/25bert/encoder/layer_9/attention/self/Reshape_1/shape/3*
T0*

axis *
N*
_output_shapes
:
ç
-bert/encoder/layer_9/attention/self/Reshape_1Reshape/bert/encoder/layer_9/attention/self/key/BiasAdd3bert/encoder/layer_9/attention/self/Reshape_1/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_9/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_9/attention/self/transpose_1	Transpose-bert/encoder/layer_9/attention/self/Reshape_14bert/encoder/layer_9/attention/self/transpose_1/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
ń
*bert/encoder/layer_9/attention/self/MatMulBatchMatMulV2-bert/encoder/layer_9/attention/self/transpose/bert/encoder/layer_9/attention/self/transpose_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
adj_x( *
adj_y(*
T0
n
)bert/encoder/layer_9/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Á
'bert/encoder/layer_9/attention/self/MulMul*bert/encoder/layer_9/attention/self/MatMul)bert/encoder/layer_9/attention/self/Mul/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
|
2bert/encoder/layer_9/attention/self/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
Ę
.bert/encoder/layer_9/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_9/attention/self/ExpandDims/dim*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
n
)bert/encoder/layer_9/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
'bert/encoder/layer_9/attention/self/subSub)bert/encoder/layer_9/attention/self/sub/x.bert/encoder/layer_9/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_9/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Â
)bert/encoder/layer_9/attention/self/mul_1Mul'bert/encoder/layer_9/attention/self/sub+bert/encoder/layer_9/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
'bert/encoder/layer_9/attention/self/addAdd'bert/encoder/layer_9/attention/self/Mul)bert/encoder/layer_9/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_9/attention/self/SoftmaxSoftmax'bert/encoder/layer_9/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5bert/encoder/layer_9/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_9/attention/self/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
w
5bert/encoder/layer_9/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
¸
3bert/encoder/layer_9/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_25bert/encoder/layer_9/attention/self/Reshape_2/shape/15bert/encoder/layer_9/attention/self/Reshape_2/shape/25bert/encoder/layer_9/attention/self/Reshape_2/shape/3*
T0*

axis *
N*
_output_shapes
:
é
-bert/encoder/layer_9/attention/self/Reshape_2Reshape1bert/encoder/layer_9/attention/self/value/BiasAdd3bert/encoder/layer_9/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

4bert/encoder/layer_9/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
é
/bert/encoder/layer_9/attention/self/transpose_2	Transpose-bert/encoder/layer_9/attention/self/Reshape_24bert/encoder/layer_9/attention/self/transpose_2/perm*
Tperm0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
đ
,bert/encoder/layer_9/attention/self/MatMul_1BatchMatMulV2+bert/encoder/layer_9/attention/self/Softmax/bert/encoder/layer_9/attention/self/transpose_2*
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
adj_x( 

4bert/encoder/layer_9/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
č
/bert/encoder/layer_9/attention/self/transpose_3	Transpose,bert/encoder/layer_9/attention/self/MatMul_14bert/encoder/layer_9/attention/self/transpose_3/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
n
+bert/encoder/layer_9/attention/self/mul_2/yConst*
_output_shapes
: *
value
B :*
dtype0

)bert/encoder/layer_9/attention/self/mul_2Mulbert/encoder/strided_slice_2+bert/encoder/layer_9/attention/self/mul_2/y*
T0*
_output_shapes
: 
x
5bert/encoder/layer_9/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
×
3bert/encoder/layer_9/attention/self/Reshape_3/shapePack)bert/encoder/layer_9/attention/self/mul_25bert/encoder/layer_9/attention/self/Reshape_3/shape/1*
_output_shapes
:*
T0*

axis *
N
ß
-bert/encoder/layer_9/attention/self/Reshape_3Reshape/bert/encoder/layer_9/attention/self/transpose_33bert/encoder/layer_9/attention/self/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
í
Ubert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0*
_output_shapes
:
ŕ
Tbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
á
_bert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 

Sbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/stddev*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:
*
T0
ó
Obert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:

ń
2bert/encoder/layer_9/attention/output/dense/kernel
VariableV2*
shared_name *E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ă
9bert/encoder/layer_9/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_9/attention/output/dense/kernelObert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

é
7bert/encoder/layer_9/attention/output/dense/kernel/readIdentity2bert/encoder/layer_9/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_9/attention/output/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
dtype0
ă
0bert/encoder/layer_9/attention/output/dense/bias
VariableV2*
shared_name *C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ë
7bert/encoder/layer_9/attention/output/dense/bias/AssignAssign0bert/encoder/layer_9/attention/output/dense/biasBbert/encoder/layer_9/attention/output/dense/bias/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ţ
5bert/encoder/layer_9/attention/output/dense/bias/readIdentity0bert/encoder/layer_9/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes	
:
ý
2bert/encoder/layer_9/attention/output/dense/MatMulMatMul-bert/encoder/layer_9/attention/self/Reshape_37bert/encoder/layer_9/attention/output/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ó
3bert/encoder/layer_9/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_9/attention/output/dense/MatMul5bert/encoder/layer_9/attention/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
)bert/encoder/layer_9/attention/output/addAdd3bert/encoder/layer_9/attention/output/dense/BiasAdd5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
ë
4bert/encoder/layer_9/attention/output/LayerNorm/beta
VariableV2*
shared_name *G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:
Ű
;bert/encoder/layer_9/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_9/attention/output/LayerNorm/betaFbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ę
9bert/encoder/layer_9/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_9/attention/output/LayerNorm/beta*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes	
:*
T0
ß
Fbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_9/attention/output/LayerNorm/gamma
VariableV2*
shared_name *H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
Ţ
<bert/encoder/layer_9/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_9/attention/output/LayerNorm/gammaFbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
í
:bert/encoder/layer_9/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_9/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_9/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_9/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_9/attention/output/addNbert/encoder/layer_9/attention/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
Dbert/encoder/layer_9/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_9/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_9/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_9/attention/output/addDbert/encoder/layer_9/attention/output/LayerNorm/moments/StopGradient*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Rbert/encoder/layer_9/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ś
@bert/encoder/layer_9/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_9/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_9/attention/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ů
=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_9/attention/output/LayerNorm/moments/variance?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
š
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ô
=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_9/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_9/attention/output/add=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ö
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_9/attention/output/LayerNorm/moments/mean=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ó
=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_9/attention/output/LayerNorm/beta/read?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Qbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel
Ř
Pbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
×Ł<*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
dtype0
Ő
[bert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/shape*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0
ő
Obert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel
ă
Kbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

é
.bert/encoder/layer_9/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ó
5bert/encoder/layer_9/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_9/intermediate/dense/kernelKbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel
Ý
3bert/encoder/layer_9/intermediate/dense/kernel/readIdentity.bert/encoder/layer_9/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ę
Dbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ő
>bert/encoder/layer_9/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:
Ű
,bert/encoder/layer_9/intermediate/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
	container *
shape:
ť
3bert/encoder/layer_9/intermediate/dense/bias/AssignAssign,bert/encoder/layer_9/intermediate/dense/bias>bert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_9/intermediate/dense/bias/readIdentity,bert/encoder/layer_9/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:

.bert/encoder/layer_9/intermediate/dense/MatMulMatMul?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_9/intermediate/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ç
/bert/encoder/layer_9/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_9/intermediate/dense/MatMul1bert/encoder/layer_9/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-bert/encoder/layer_9/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Ĺ
+bert/encoder/layer_9/intermediate/dense/PowPow/bert/encoder/layer_9/intermediate/dense/BiasAdd-bert/encoder/layer_9/intermediate/dense/Pow/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
-bert/encoder/layer_9/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Á
+bert/encoder/layer_9/intermediate/dense/mulMul-bert/encoder/layer_9/intermediate/dense/mul/x+bert/encoder/layer_9/intermediate/dense/Pow*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
+bert/encoder/layer_9/intermediate/dense/addAdd/bert/encoder/layer_9/intermediate/dense/BiasAdd+bert/encoder/layer_9/intermediate/dense/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
/bert/encoder/layer_9/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Ĺ
-bert/encoder/layer_9/intermediate/dense/mul_1Mul/bert/encoder/layer_9/intermediate/dense/mul_1/x+bert/encoder/layer_9/intermediate/dense/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_9/intermediate/dense/TanhTanh-bert/encoder/layer_9/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_9/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
-bert/encoder/layer_9/intermediate/dense/add_1Add/bert/encoder/layer_9/intermediate/dense/add_1/x,bert/encoder/layer_9/intermediate/dense/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/bert/encoder/layer_9/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ç
-bert/encoder/layer_9/intermediate/dense/mul_2Mul/bert/encoder/layer_9/intermediate/dense/mul_2/x-bert/encoder/layer_9/intermediate/dense/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
-bert/encoder/layer_9/intermediate/dense/mul_3Mul/bert/encoder/layer_9/intermediate/dense/BiasAdd-bert/encoder/layer_9/intermediate/dense/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ů
Kbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
dtype0*
_output_shapes
:
Ě
Jbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
×Ł<*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
dtype0
Ă
Ubert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel
Ý
Ibert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/stddev*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:
*
T0
Ë
Ebert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel
Ý
(bert/encoder/layer_9/output/dense/kernel
VariableV2*
shared_name *;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ť
/bert/encoder/layer_9/output/dense/kernel/AssignAssign(bert/encoder/layer_9/output/dense/kernelEbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
validate_shape(* 
_output_shapes
:

Ë
-bert/encoder/layer_9/output/dense/kernel/readIdentity(bert/encoder/layer_9/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_9/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
dtype0*
_output_shapes	
:
Ď
&bert/encoder/layer_9/output/dense/bias
VariableV2*
shared_name *9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ł
-bert/encoder/layer_9/output/dense/bias/AssignAssign&bert/encoder/layer_9/output/dense/bias8bert/encoder/layer_9/output/dense/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ŕ
+bert/encoder/layer_9/output/dense/bias/readIdentity&bert/encoder/layer_9/output/dense/bias*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias
é
(bert/encoder/layer_9/output/dense/MatMulMatMul-bert/encoder/layer_9/intermediate/dense/mul_3-bert/encoder/layer_9/output/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ő
)bert/encoder/layer_9/output/dense/BiasAddBiasAdd(bert/encoder/layer_9/output/dense/MatMul+bert/encoder/layer_9/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
bert/encoder/layer_9/output/addAdd)bert/encoder/layer_9/output/dense/BiasAdd?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
<bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
×
*bert/encoder/layer_9/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
	container *
shape:
ł
1bert/encoder/layer_9/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_9/output/LayerNorm/beta<bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
Ě
/bert/encoder/layer_9/output/LayerNorm/beta/readIdentity*bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta
Ë
<bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma
Ů
+bert/encoder/layer_9/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
	container *
shape:
ś
2bert/encoder/layer_9/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_9/output/LayerNorm/gamma<bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ď
0bert/encoder/layer_9/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_9/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_9/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
đ
2bert/encoder/layer_9/output/LayerNorm/moments/meanMeanbert/encoder/layer_9/output/addDbert/encoder/layer_9/output/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
°
:bert/encoder/layer_9/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_9/output/LayerNorm/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ä
?bert/encoder/layer_9/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_9/output/add:bert/encoder/layer_9/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_9/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_9/output/LayerNorm/moments/varianceMean?bert/encoder/layer_9/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_9/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
z
5bert/encoder/layer_9/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ěź+
Ű
3bert/encoder/layer_9/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_9/output/LayerNorm/moments/variance5bert/encoder/layer_9/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
5bert/encoder/layer_9/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_9/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
3bert/encoder/layer_9/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_9/output/LayerNorm/gamma/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_9/output/add3bert/encoder/layer_9/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_9/output/LayerNorm/moments/mean3bert/encoder/layer_9/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ő
3bert/encoder/layer_9/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_9/output/LayerNorm/beta/read5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_9/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

*bert/encoder/layer_10/attention/self/ShapeShape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

8bert/encoder/layer_10/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

:bert/encoder/layer_10/attention/self/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

:bert/encoder/layer_10/attention/self/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
˛
2bert/encoder/layer_10/attention/self/strided_sliceStridedSlice*bert/encoder/layer_10/attention/self/Shape8bert/encoder/layer_10/attention/self/strided_slice/stack:bert/encoder/layer_10/attention/self/strided_slice/stack_1:bert/encoder/layer_10/attention/self/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ą
,bert/encoder/layer_10/attention/self/Shape_1Shape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

:bert/encoder/layer_10/attention/self/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

<bert/encoder/layer_10/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_10/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ź
4bert/encoder/layer_10/attention/self/strided_slice_1StridedSlice,bert/encoder/layer_10/attention/self/Shape_1:bert/encoder/layer_10/attention/self/strided_slice_1/stack<bert/encoder/layer_10/attention/self/strided_slice_1/stack_1<bert/encoder/layer_10/attention/self/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
ë
Tbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ţ
Sbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
dtype0*
_output_shapes
: 
ŕ
Ubert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ţ
^bert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
seed2 

Rbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:

ď
Nbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normalAddRbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:

ď
1bert/encoder/layer_10/attention/self/query/kernel
VariableV2*
shared_name *D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ß
8bert/encoder/layer_10/attention/self/query/kernel/AssignAssign1bert/encoder/layer_10/attention/self/query/kernelNbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ć
6bert/encoder/layer_10/attention/self/query/kernel/readIdentity1bert/encoder/layer_10/attention/self/query/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_10/attention/self/query/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
dtype0
á
/bert/encoder/layer_10/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
	container *
shape:
Ç
6bert/encoder/layer_10/attention/self/query/bias/AssignAssign/bert/encoder/layer_10/attention/self/query/biasAbert/encoder/layer_10/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ű
4bert/encoder/layer_10/attention/self/query/bias/readIdentity/bert/encoder/layer_10/attention/self/query/bias*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
_output_shapes	
:

1bert/encoder/layer_10/attention/self/query/MatMulMatMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_16bert/encoder/layer_10/attention/self/query/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
đ
2bert/encoder/layer_10/attention/self/query/BiasAddBiasAdd1bert/encoder/layer_10/attention/self/query/MatMul4bert/encoder/layer_10/attention/self/query/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
Rbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel
Ú
Qbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ü
Sbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×Ł<*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel
Ř
\bert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/shape*

seed *
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
seed2 *
dtype0* 
_output_shapes
:

ů
Pbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normalAddPbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel
ë
/bert/encoder/layer_10/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
	container *
shape:

×
6bert/encoder/layer_10/attention/self/key/kernel/AssignAssign/bert/encoder/layer_10/attention/self/key/kernelLbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

ŕ
4bert/encoder/layer_10/attention/self/key/kernel/readIdentity/bert/encoder/layer_10/attention/self/key/kernel*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:
*
T0
Đ
?bert/encoder/layer_10/attention/self/key/bias/Initializer/zerosConst*
valueB*    *@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
dtype0*
_output_shapes	
:
Ý
-bert/encoder/layer_10/attention/self/key/bias
VariableV2*
shared_name *@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ż
4bert/encoder/layer_10/attention/self/key/bias/AssignAssign-bert/encoder/layer_10/attention/self/key/bias?bert/encoder/layer_10/attention/self/key/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias
Ő
2bert/encoder/layer_10/attention/self/key/bias/readIdentity-bert/encoder/layer_10/attention/self/key/bias*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:
˙
/bert/encoder/layer_10/attention/self/key/MatMulMatMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_14bert/encoder/layer_10/attention/self/key/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ę
0bert/encoder/layer_10/attention/self/key/BiasAddBiasAdd/bert/encoder/layer_10/attention/self/key/MatMul2bert/encoder/layer_10/attention/self/key/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Tbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ţ
Sbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0*
_output_shapes
: 
ŕ
Ubert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
^bert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
seed2 

Rbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

ď
Nbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normalAddRbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

ď
1bert/encoder/layer_10/attention/self/value/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
	container 
ß
8bert/encoder/layer_10/attention/self/value/kernel/AssignAssign1bert/encoder/layer_10/attention/self/value/kernelNbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
validate_shape(
ć
6bert/encoder/layer_10/attention/self/value/kernel/readIdentity1bert/encoder/layer_10/attention/self/value/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_10/attention/self/value/bias/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
dtype0*
_output_shapes	
:
á
/bert/encoder/layer_10/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
	container *
shape:
Ç
6bert/encoder/layer_10/attention/self/value/bias/AssignAssign/bert/encoder/layer_10/attention/self/value/biasAbert/encoder/layer_10/attention/self/value/bias/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
Ű
4bert/encoder/layer_10/attention/self/value/bias/readIdentity/bert/encoder/layer_10/attention/self/value/bias*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
_output_shapes	
:*
T0

1bert/encoder/layer_10/attention/self/value/MatMulMatMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_16bert/encoder/layer_10/attention/self/value/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
đ
2bert/encoder/layer_10/attention/self/value/BiasAddBiasAdd1bert/encoder/layer_10/attention/self/value/MatMul4bert/encoder/layer_10/attention/self/value/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
4bert/encoder/layer_10/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
v
4bert/encoder/layer_10/attention/self/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
v
4bert/encoder/layer_10/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
´
2bert/encoder/layer_10/attention/self/Reshape/shapePackbert/encoder/strided_slice_24bert/encoder/layer_10/attention/self/Reshape/shape/14bert/encoder/layer_10/attention/self/Reshape/shape/24bert/encoder/layer_10/attention/self/Reshape/shape/3*

axis *
N*
_output_shapes
:*
T0
č
,bert/encoder/layer_10/attention/self/ReshapeReshape2bert/encoder/layer_10/attention/self/query/BiasAdd2bert/encoder/layer_10/attention/self/Reshape/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
Tshape0

3bert/encoder/layer_10/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ć
.bert/encoder/layer_10/attention/self/transpose	Transpose,bert/encoder/layer_10/attention/self/Reshape3bert/encoder/layer_10/attention/self/transpose/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
y
6bert/encoder/layer_10/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
x
6bert/encoder/layer_10/attention/self/Reshape_1/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
x
6bert/encoder/layer_10/attention/self/Reshape_1/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
ź
4bert/encoder/layer_10/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_26bert/encoder/layer_10/attention/self/Reshape_1/shape/16bert/encoder/layer_10/attention/self/Reshape_1/shape/26bert/encoder/layer_10/attention/self/Reshape_1/shape/3*
T0*

axis *
N*
_output_shapes
:
ę
.bert/encoder/layer_10/attention/self/Reshape_1Reshape0bert/encoder/layer_10/attention/self/key/BiasAdd4bert/encoder/layer_10/attention/self/Reshape_1/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
Tshape0

5bert/encoder/layer_10/attention/self/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
ě
0bert/encoder/layer_10/attention/self/transpose_1	Transpose.bert/encoder/layer_10/attention/self/Reshape_15bert/encoder/layer_10/attention/self/transpose_1/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ô
+bert/encoder/layer_10/attention/self/MatMulBatchMatMulV2.bert/encoder/layer_10/attention/self/transpose0bert/encoder/layer_10/attention/self/transpose_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
adj_x( *
adj_y(*
T0
o
*bert/encoder/layer_10/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Ä
(bert/encoder/layer_10/attention/self/MulMul+bert/encoder/layer_10/attention/self/MatMul*bert/encoder/layer_10/attention/self/Mul/y*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
3bert/encoder/layer_10/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ě
/bert/encoder/layer_10/attention/self/ExpandDims
ExpandDimsbert/encoder/mul3bert/encoder/layer_10/attention/self/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_10/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Č
(bert/encoder/layer_10/attention/self/subSub*bert/encoder/layer_10/attention/self/sub/x/bert/encoder/layer_10/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,bert/encoder/layer_10/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Ĺ
*bert/encoder/layer_10/attention/self/mul_1Mul(bert/encoder/layer_10/attention/self/sub,bert/encoder/layer_10/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(bert/encoder/layer_10/attention/self/addAdd(bert/encoder/layer_10/attention/self/Mul*bert/encoder/layer_10/attention/self/mul_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_10/attention/self/SoftmaxSoftmax(bert/encoder/layer_10/attention/self/add*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
6bert/encoder/layer_10/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
x
6bert/encoder/layer_10/attention/self/Reshape_2/shape/2Const*
_output_shapes
: *
value	B :*
dtype0
x
6bert/encoder/layer_10/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
ź
4bert/encoder/layer_10/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_26bert/encoder/layer_10/attention/self/Reshape_2/shape/16bert/encoder/layer_10/attention/self/Reshape_2/shape/26bert/encoder/layer_10/attention/self/Reshape_2/shape/3*
T0*

axis *
N*
_output_shapes
:
ě
.bert/encoder/layer_10/attention/self/Reshape_2Reshape2bert/encoder/layer_10/attention/self/value/BiasAdd4bert/encoder/layer_10/attention/self/Reshape_2/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

5bert/encoder/layer_10/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ě
0bert/encoder/layer_10/attention/self/transpose_2	Transpose.bert/encoder/layer_10/attention/self/Reshape_25bert/encoder/layer_10/attention/self/transpose_2/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ó
-bert/encoder/layer_10/attention/self/MatMul_1BatchMatMulV2,bert/encoder/layer_10/attention/self/Softmax0bert/encoder/layer_10/attention/self/transpose_2*
adj_x( *
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

5bert/encoder/layer_10/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ë
0bert/encoder/layer_10/attention/self/transpose_3	Transpose-bert/encoder/layer_10/attention/self/MatMul_15bert/encoder/layer_10/attention/self/transpose_3/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
o
,bert/encoder/layer_10/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

*bert/encoder/layer_10/attention/self/mul_2Mulbert/encoder/strided_slice_2,bert/encoder/layer_10/attention/self/mul_2/y*
_output_shapes
: *
T0
y
6bert/encoder/layer_10/attention/self/Reshape_3/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
Ú
4bert/encoder/layer_10/attention/self/Reshape_3/shapePack*bert/encoder/layer_10/attention/self/mul_26bert/encoder/layer_10/attention/self/Reshape_3/shape/1*

axis *
N*
_output_shapes
:*
T0
â
.bert/encoder/layer_10/attention/self/Reshape_3Reshape0bert/encoder/layer_10/attention/self/transpose_34bert/encoder/layer_10/attention/self/Reshape_3/shape*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ď
Vbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
dtype0*
_output_shapes
:
â
Ubert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
ä
Wbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
ä
`bert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/shape*

seed *
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:


Tbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mulMul`bert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalWbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/stddev*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:
*
T0
÷
Pbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normalAddTbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mulUbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

ó
3bert/encoder/layer_10/attention/output/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
	container *
shape:

ç
:bert/encoder/layer_10/attention/output/dense/kernel/AssignAssign3bert/encoder/layer_10/attention/output/dense/kernelPbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel
ě
8bert/encoder/layer_10/attention/output/dense/kernel/readIdentity3bert/encoder/layer_10/attention/output/dense/kernel*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

Ř
Cbert/encoder/layer_10/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
dtype0*
_output_shapes	
:
ĺ
1bert/encoder/layer_10/attention/output/dense/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias
Ď
8bert/encoder/layer_10/attention/output/dense/bias/AssignAssign1bert/encoder/layer_10/attention/output/dense/biasCbert/encoder/layer_10/attention/output/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias
á
6bert/encoder/layer_10/attention/output/dense/bias/readIdentity1bert/encoder/layer_10/attention/output/dense/bias*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:

3bert/encoder/layer_10/attention/output/dense/MatMulMatMul.bert/encoder/layer_10/attention/self/Reshape_38bert/encoder/layer_10/attention/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ö
4bert/encoder/layer_10/attention/output/dense/BiasAddBiasAdd3bert/encoder/layer_10/attention/output/dense/MatMul6bert/encoder/layer_10/attention/output/dense/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
Ń
*bert/encoder/layer_10/attention/output/addAdd4bert/encoder/layer_10/attention/output/dense/BiasAdd5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ŕ
Gbert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
í
5bert/encoder/layer_10/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
	container *
shape:
ß
<bert/encoder/layer_10/attention/output/LayerNorm/beta/AssignAssign5bert/encoder/layer_10/attention/output/LayerNorm/betaGbert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta
í
:bert/encoder/layer_10/attention/output/LayerNorm/beta/readIdentity5bert/encoder/layer_10/attention/output/LayerNorm/beta*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
_output_shapes	
:
á
Gbert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
ď
6bert/encoder/layer_10/attention/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
	container *
shape:
â
=bert/encoder/layer_10/attention/output/LayerNorm/gamma/AssignAssign6bert/encoder/layer_10/attention/output/LayerNorm/gammaGbert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
đ
;bert/encoder/layer_10/attention/output/LayerNorm/gamma/readIdentity6bert/encoder/layer_10/attention/output/LayerNorm/gamma*
T0*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes	
:

Obert/encoder/layer_10/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

=bert/encoder/layer_10/attention/output/LayerNorm/moments/meanMean*bert/encoder/layer_10/attention/output/addObert/encoder/layer_10/attention/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
Ebert/encoder/layer_10/attention/output/LayerNorm/moments/StopGradientStopGradient=bert/encoder/layer_10/attention/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Jbert/encoder/layer_10/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference*bert/encoder/layer_10/attention/output/addEbert/encoder/layer_10/attention/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Sbert/encoder/layer_10/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
š
Abert/encoder/layer_10/attention/output/LayerNorm/moments/varianceMeanJbert/encoder/layer_10/attention/output/LayerNorm/moments/SquaredDifferenceSbert/encoder/layer_10/attention/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
ü
>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/addAddAbert/encoder/layer_10/attention/output/LayerNorm/moments/variance@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/RsqrtRsqrt>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
÷
>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mulMul@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/Rsqrt;bert/encoder/layer_10/attention/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_1Mul*bert/encoder/layer_10/attention/output/add>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_2Mul=bert/encoder/layer_10/attention/output/LayerNorm/moments/mean>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/subSub:bert/encoder/layer_10/attention/output/LayerNorm/beta/read@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1Add@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_1>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
Rbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
dtype0
Ú
Qbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ü
Sbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ř
\bert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
seed2 
ů
Pbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel
ç
Lbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normalAddPbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:

ë
/bert/encoder/layer_10/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
	container *
shape:

×
6bert/encoder/layer_10/intermediate/dense/kernel/AssignAssign/bert/encoder/layer_10/intermediate/dense/kernelLbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel
ŕ
4bert/encoder/layer_10/intermediate/dense/kernel/readIdentity/bert/encoder/layer_10/intermediate/dense/kernel*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:

Ü
Obert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ě
Ebert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias
Ů
?bert/encoder/layer_10/intermediate/dense/bias/Initializer/zerosFillObert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/shape_as_tensorEbert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/Const*

index_type0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:*
T0
Ý
-bert/encoder/layer_10/intermediate/dense/bias
VariableV2*
_output_shapes	
:*
shared_name *@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
	container *
shape:*
dtype0
ż
4bert/encoder/layer_10/intermediate/dense/bias/AssignAssign-bert/encoder/layer_10/intermediate/dense/bias?bert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias
Ő
2bert/encoder/layer_10/intermediate/dense/bias/readIdentity-bert/encoder/layer_10/intermediate/dense/bias*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:*
T0

/bert/encoder/layer_10/intermediate/dense/MatMulMatMul@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_14bert/encoder/layer_10/intermediate/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ę
0bert/encoder/layer_10/intermediate/dense/BiasAddBiasAdd/bert/encoder/layer_10/intermediate/dense/MatMul2bert/encoder/layer_10/intermediate/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
s
.bert/encoder/layer_10/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Č
,bert/encoder/layer_10/intermediate/dense/PowPow0bert/encoder/layer_10/intermediate/dense/BiasAdd.bert/encoder/layer_10/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
.bert/encoder/layer_10/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Ä
,bert/encoder/layer_10/intermediate/dense/mulMul.bert/encoder/layer_10/intermediate/dense/mul/x,bert/encoder/layer_10/intermediate/dense/Pow*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
,bert/encoder/layer_10/intermediate/dense/addAdd0bert/encoder/layer_10/intermediate/dense/BiasAdd,bert/encoder/layer_10/intermediate/dense/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
u
0bert/encoder/layer_10/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Č
.bert/encoder/layer_10/intermediate/dense/mul_1Mul0bert/encoder/layer_10/intermediate/dense/mul_1/x,bert/encoder/layer_10/intermediate/dense/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-bert/encoder/layer_10/intermediate/dense/TanhTanh.bert/encoder/layer_10/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
0bert/encoder/layer_10/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
É
.bert/encoder/layer_10/intermediate/dense/add_1Add0bert/encoder/layer_10/intermediate/dense/add_1/x-bert/encoder/layer_10/intermediate/dense/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
0bert/encoder/layer_10/intermediate/dense/mul_2/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
Ę
.bert/encoder/layer_10/intermediate/dense/mul_2Mul0bert/encoder/layer_10/intermediate/dense/mul_2/x.bert/encoder/layer_10/intermediate/dense/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
.bert/encoder/layer_10/intermediate/dense/mul_3Mul0bert/encoder/layer_10/intermediate/dense/BiasAdd.bert/encoder/layer_10/intermediate/dense/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ű
Lbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0*
_output_shapes
:
Î
Kbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0*
_output_shapes
: 
Đ
Mbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
×Ł<*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0
Ć
Vbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel
á
Jbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mulMulVbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalMbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:

Ď
Fbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normalAddJbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mulKbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel
ß
)bert/encoder/layer_10/output/dense/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
	container 
ż
0bert/encoder/layer_10/output/dense/kernel/AssignAssign)bert/encoder/layer_10/output/dense/kernelFbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
validate_shape(* 
_output_shapes
:

Î
.bert/encoder/layer_10/output/dense/kernel/readIdentity)bert/encoder/layer_10/output/dense/kernel*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:
*
T0
Ä
9bert/encoder/layer_10/output/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
dtype0
Ń
'bert/encoder/layer_10/output/dense/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias
§
.bert/encoder/layer_10/output/dense/bias/AssignAssign'bert/encoder/layer_10/output/dense/bias9bert/encoder/layer_10/output/dense/bias/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
validate_shape(*
_output_shapes	
:
Ă
,bert/encoder/layer_10/output/dense/bias/readIdentity'bert/encoder/layer_10/output/dense/bias*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
_output_shapes	
:
ě
)bert/encoder/layer_10/output/dense/MatMulMatMul.bert/encoder/layer_10/intermediate/dense/mul_3.bert/encoder/layer_10/output/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ř
*bert/encoder/layer_10/output/dense/BiasAddBiasAdd)bert/encoder/layer_10/output/dense/MatMul,bert/encoder/layer_10/output/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Č
 bert/encoder/layer_10/output/addAdd*bert/encoder/layer_10/output/dense/BiasAdd@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
=bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
dtype0
Ů
+bert/encoder/layer_10/output/LayerNorm/beta
VariableV2*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ˇ
2bert/encoder/layer_10/output/LayerNorm/beta/AssignAssign+bert/encoder/layer_10/output/LayerNorm/beta=bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zeros*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
Ď
0bert/encoder/layer_10/output/LayerNorm/beta/readIdentity+bert/encoder/layer_10/output/LayerNorm/beta*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes	
:
Í
=bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_10/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
	container *
shape:
ş
3bert/encoder/layer_10/output/LayerNorm/gamma/AssignAssign,bert/encoder/layer_10/output/LayerNorm/gamma=bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_10/output/LayerNorm/gamma/readIdentity,bert/encoder/layer_10/output/LayerNorm/gamma*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes	
:

Ebert/encoder/layer_10/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ó
3bert/encoder/layer_10/output/LayerNorm/moments/meanMean bert/encoder/layer_10/output/addEbert/encoder/layer_10/output/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
˛
;bert/encoder/layer_10/output/LayerNorm/moments/StopGradientStopGradient3bert/encoder/layer_10/output/LayerNorm/moments/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
@bert/encoder/layer_10/output/LayerNorm/moments/SquaredDifferenceSquaredDifference bert/encoder/layer_10/output/add;bert/encoder/layer_10/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_10/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

7bert/encoder/layer_10/output/LayerNorm/moments/varianceMean@bert/encoder/layer_10/output/LayerNorm/moments/SquaredDifferenceIbert/encoder/layer_10/output/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
{
6bert/encoder/layer_10/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ţ
4bert/encoder/layer_10/output/LayerNorm/batchnorm/addAdd7bert/encoder/layer_10/output/LayerNorm/moments/variance6bert/encoder/layer_10/output/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
6bert/encoder/layer_10/output/LayerNorm/batchnorm/RsqrtRsqrt4bert/encoder/layer_10/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
4bert/encoder/layer_10/output/LayerNorm/batchnorm/mulMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/Rsqrt1bert/encoder/layer_10/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_1Mul bert/encoder/layer_10/output/add4bert/encoder/layer_10/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_2Mul3bert/encoder/layer_10/output/LayerNorm/moments/mean4bert/encoder/layer_10/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
4bert/encoder/layer_10/output/LayerNorm/batchnorm/subSub0bert/encoder/layer_10/output/LayerNorm/beta/read6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1Add6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_14bert/encoder/layer_10/output/LayerNorm/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
*bert/encoder/layer_11/attention/self/ShapeShape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:

8bert/encoder/layer_11/attention/self/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

:bert/encoder/layer_11/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

:bert/encoder/layer_11/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
˛
2bert/encoder/layer_11/attention/self/strided_sliceStridedSlice*bert/encoder/layer_11/attention/self/Shape8bert/encoder/layer_11/attention/self/strided_slice/stack:bert/encoder/layer_11/attention/self/strided_slice/stack_1:bert/encoder/layer_11/attention/self/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
˘
,bert/encoder/layer_11/attention/self/Shape_1Shape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0

:bert/encoder/layer_11/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0

<bert/encoder/layer_11/attention/self/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<bert/encoder/layer_11/attention/self/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ź
4bert/encoder/layer_11/attention/self/strided_slice_1StridedSlice,bert/encoder/layer_11/attention/self/Shape_1:bert/encoder/layer_11/attention/self/strided_slice_1/stack<bert/encoder/layer_11/attention/self/strided_slice_1/stack_1<bert/encoder/layer_11/attention/self/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
ë
Tbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ţ
Sbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0
ŕ
Ubert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Ţ
^bert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/shape*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0

Rbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

ď
Nbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normalAddRbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

ď
1bert/encoder/layer_11/attention/self/query/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
	container 
ß
8bert/encoder/layer_11/attention/self/query/kernel/AssignAssign1bert/encoder/layer_11/attention/self/query/kernelNbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ć
6bert/encoder/layer_11/attention/self/query/kernel/readIdentity1bert/encoder/layer_11/attention/self/query/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_11/attention/self/query/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
dtype0
á
/bert/encoder/layer_11/attention/self/query/bias
VariableV2*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ç
6bert/encoder/layer_11/attention/self/query/bias/AssignAssign/bert/encoder/layer_11/attention/self/query/biasAbert/encoder/layer_11/attention/self/query/bias/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
Ű
4bert/encoder/layer_11/attention/self/query/bias/readIdentity/bert/encoder/layer_11/attention/self/query/bias*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:

1bert/encoder/layer_11/attention/self/query/MatMulMatMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_16bert/encoder/layer_11/attention/self/query/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
đ
2bert/encoder/layer_11/attention/self/query/BiasAddBiasAdd1bert/encoder/layer_11/attention/self/query/MatMul4bert/encoder/layer_11/attention/self/query/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
Rbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ú
Qbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
dtype0
Ü
Sbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ř
\bert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
ů
Pbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normalAddPbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
ë
/bert/encoder/layer_11/attention/self/key/kernel
VariableV2*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
×
6bert/encoder/layer_11/attention/self/key/kernel/AssignAssign/bert/encoder/layer_11/attention/self/key/kernelLbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
validate_shape(
ŕ
4bert/encoder/layer_11/attention/self/key/kernel/readIdentity/bert/encoder/layer_11/attention/self/key/kernel*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:

Đ
?bert/encoder/layer_11/attention/self/key/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
dtype0
Ý
-bert/encoder/layer_11/attention/self/key/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
	container 
ż
4bert/encoder/layer_11/attention/self/key/bias/AssignAssign-bert/encoder/layer_11/attention/self/key/bias?bert/encoder/layer_11/attention/self/key/bias/Initializer/zeros*
T0*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ő
2bert/encoder/layer_11/attention/self/key/bias/readIdentity-bert/encoder/layer_11/attention/self/key/bias*
_output_shapes	
:*
T0*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias

/bert/encoder/layer_11/attention/self/key/MatMulMatMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_14bert/encoder/layer_11/attention/self/key/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ę
0bert/encoder/layer_11/attention/self/key/BiasAddBiasAdd/bert/encoder/layer_11/attention/self/key/MatMul2bert/encoder/layer_11/attention/self/key/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Tbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ţ
Sbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel
ŕ
Ubert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Ţ
^bert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
seed2 

Rbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel
ď
Nbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normalAddRbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:

ď
1bert/encoder/layer_11/attention/self/value/kernel
VariableV2*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
ß
8bert/encoder/layer_11/attention/self/value/kernel/AssignAssign1bert/encoder/layer_11/attention/self/value/kernelNbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ć
6bert/encoder/layer_11/attention/self/value/kernel/readIdentity1bert/encoder/layer_11/attention/self/value/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_11/attention/self/value/bias/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
dtype0*
_output_shapes	
:
á
/bert/encoder/layer_11/attention/self/value/bias
VariableV2*
shared_name *B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ç
6bert/encoder/layer_11/attention/self/value/bias/AssignAssign/bert/encoder/layer_11/attention/self/value/biasAbert/encoder/layer_11/attention/self/value/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
validate_shape(
Ű
4bert/encoder/layer_11/attention/self/value/bias/readIdentity/bert/encoder/layer_11/attention/self/value/bias*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
_output_shapes	
:

1bert/encoder/layer_11/attention/self/value/MatMulMatMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_16bert/encoder/layer_11/attention/self/value/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
đ
2bert/encoder/layer_11/attention/self/value/BiasAddBiasAdd1bert/encoder/layer_11/attention/self/value/MatMul4bert/encoder/layer_11/attention/self/value/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
4bert/encoder/layer_11/attention/self/Reshape/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
v
4bert/encoder/layer_11/attention/self/Reshape/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
v
4bert/encoder/layer_11/attention/self/Reshape/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
´
2bert/encoder/layer_11/attention/self/Reshape/shapePackbert/encoder/strided_slice_24bert/encoder/layer_11/attention/self/Reshape/shape/14bert/encoder/layer_11/attention/self/Reshape/shape/24bert/encoder/layer_11/attention/self/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
č
,bert/encoder/layer_11/attention/self/ReshapeReshape2bert/encoder/layer_11/attention/self/query/BiasAdd2bert/encoder/layer_11/attention/self/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

3bert/encoder/layer_11/attention/self/transpose/permConst*
_output_shapes
:*%
valueB"             *
dtype0
ć
.bert/encoder/layer_11/attention/self/transpose	Transpose,bert/encoder/layer_11/attention/self/Reshape3bert/encoder/layer_11/attention/self/transpose/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
y
6bert/encoder/layer_11/attention/self/Reshape_1/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
x
6bert/encoder/layer_11/attention/self/Reshape_1/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
x
6bert/encoder/layer_11/attention/self/Reshape_1/shape/3Const*
_output_shapes
: *
value	B :@*
dtype0
ź
4bert/encoder/layer_11/attention/self/Reshape_1/shapePackbert/encoder/strided_slice_26bert/encoder/layer_11/attention/self/Reshape_1/shape/16bert/encoder/layer_11/attention/self/Reshape_1/shape/26bert/encoder/layer_11/attention/self/Reshape_1/shape/3*

axis *
N*
_output_shapes
:*
T0
ę
.bert/encoder/layer_11/attention/self/Reshape_1Reshape0bert/encoder/layer_11/attention/self/key/BiasAdd4bert/encoder/layer_11/attention/self/Reshape_1/shape*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

5bert/encoder/layer_11/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ě
0bert/encoder/layer_11/attention/self/transpose_1	Transpose.bert/encoder/layer_11/attention/self/Reshape_15bert/encoder/layer_11/attention/self/transpose_1/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ô
+bert/encoder/layer_11/attention/self/MatMulBatchMatMulV2.bert/encoder/layer_11/attention/self/transpose0bert/encoder/layer_11/attention/self/transpose_1*
adj_x( *
adj_y(*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_11/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Ä
(bert/encoder/layer_11/attention/self/MulMul+bert/encoder/layer_11/attention/self/MatMul*bert/encoder/layer_11/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
3bert/encoder/layer_11/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
Ě
/bert/encoder/layer_11/attention/self/ExpandDims
ExpandDimsbert/encoder/mul3bert/encoder/layer_11/attention/self/ExpandDims/dim*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
o
*bert/encoder/layer_11/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Č
(bert/encoder/layer_11/attention/self/subSub*bert/encoder/layer_11/attention/self/sub/x/bert/encoder/layer_11/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,bert/encoder/layer_11/attention/self/mul_1/yConst*
valueB
 * @Ć*
dtype0*
_output_shapes
: 
Ĺ
*bert/encoder/layer_11/attention/self/mul_1Mul(bert/encoder/layer_11/attention/self/sub,bert/encoder/layer_11/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(bert/encoder/layer_11/attention/self/addAdd(bert/encoder/layer_11/attention/self/Mul*bert/encoder/layer_11/attention/self/mul_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

,bert/encoder/layer_11/attention/self/SoftmaxSoftmax(bert/encoder/layer_11/attention/self/add*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
6bert/encoder/layer_11/attention/self/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
x
6bert/encoder/layer_11/attention/self/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
x
6bert/encoder/layer_11/attention/self/Reshape_2/shape/3Const*
value	B :@*
dtype0*
_output_shapes
: 
ź
4bert/encoder/layer_11/attention/self/Reshape_2/shapePackbert/encoder/strided_slice_26bert/encoder/layer_11/attention/self/Reshape_2/shape/16bert/encoder/layer_11/attention/self/Reshape_2/shape/26bert/encoder/layer_11/attention/self/Reshape_2/shape/3*
T0*

axis *
N*
_output_shapes
:
ě
.bert/encoder/layer_11/attention/self/Reshape_2Reshape2bert/encoder/layer_11/attention/self/value/BiasAdd4bert/encoder/layer_11/attention/self/Reshape_2/shape*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

5bert/encoder/layer_11/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ě
0bert/encoder/layer_11/attention/self/transpose_2	Transpose.bert/encoder/layer_11/attention/self/Reshape_25bert/encoder/layer_11/attention/self/transpose_2/perm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0
ó
-bert/encoder/layer_11/attention/self/MatMul_1BatchMatMulV2,bert/encoder/layer_11/attention/self/Softmax0bert/encoder/layer_11/attention/self/transpose_2*
adj_x( *
adj_y( *
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

5bert/encoder/layer_11/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ë
0bert/encoder/layer_11/attention/self/transpose_3	Transpose-bert/encoder/layer_11/attention/self/MatMul_15bert/encoder/layer_11/attention/self/transpose_3/perm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tperm0*
T0
o
,bert/encoder/layer_11/attention/self/mul_2/yConst*
value
B :*
dtype0*
_output_shapes
: 

*bert/encoder/layer_11/attention/self/mul_2Mulbert/encoder/strided_slice_2,bert/encoder/layer_11/attention/self/mul_2/y*
T0*
_output_shapes
: 
y
6bert/encoder/layer_11/attention/self/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
Ú
4bert/encoder/layer_11/attention/self/Reshape_3/shapePack*bert/encoder/layer_11/attention/self/mul_26bert/encoder/layer_11/attention/self/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
â
.bert/encoder/layer_11/attention/self/Reshape_3Reshape0bert/encoder/layer_11/attention/self/transpose_34bert/encoder/layer_11/attention/self/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
Vbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
dtype0*
_output_shapes
:
â
Ubert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
ä
Wbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
ä
`bert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/shape* 
_output_shapes
:
*

seed *
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
seed2 *
dtype0

Tbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mulMul`bert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalWbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

÷
Pbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normalAddTbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mulUbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

ó
3bert/encoder/layer_11/attention/output/dense/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
	container 
ç
:bert/encoder/layer_11/attention/output/dense/kernel/AssignAssign3bert/encoder/layer_11/attention/output/dense/kernelPbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel
ě
8bert/encoder/layer_11/attention/output/dense/kernel/readIdentity3bert/encoder/layer_11/attention/output/dense/kernel*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

Ř
Cbert/encoder/layer_11/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
dtype0*
_output_shapes	
:
ĺ
1bert/encoder/layer_11/attention/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
	container *
shape:
Ď
8bert/encoder/layer_11/attention/output/dense/bias/AssignAssign1bert/encoder/layer_11/attention/output/dense/biasCbert/encoder/layer_11/attention/output/dense/bias/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
á
6bert/encoder/layer_11/attention/output/dense/bias/readIdentity1bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias

3bert/encoder/layer_11/attention/output/dense/MatMulMatMul.bert/encoder/layer_11/attention/self/Reshape_38bert/encoder/layer_11/attention/output/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ö
4bert/encoder/layer_11/attention/output/dense/BiasAddBiasAdd3bert/encoder/layer_11/attention/output/dense/MatMul6bert/encoder/layer_11/attention/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
*bert/encoder/layer_11/attention/output/addAdd4bert/encoder/layer_11/attention/output/dense/BiasAdd6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ŕ
Gbert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
dtype0
í
5bert/encoder/layer_11/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
	container *
shape:
ß
<bert/encoder/layer_11/attention/output/LayerNorm/beta/AssignAssign5bert/encoder/layer_11/attention/output/LayerNorm/betaGbert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
validate_shape(
í
:bert/encoder/layer_11/attention/output/LayerNorm/beta/readIdentity5bert/encoder/layer_11/attention/output/LayerNorm/beta*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:
á
Gbert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma
ď
6bert/encoder/layer_11/attention/output/LayerNorm/gamma
VariableV2*
shared_name *I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
â
=bert/encoder/layer_11/attention/output/LayerNorm/gamma/AssignAssign6bert/encoder/layer_11/attention/output/LayerNorm/gammaGbert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
đ
;bert/encoder/layer_11/attention/output/LayerNorm/gamma/readIdentity6bert/encoder/layer_11/attention/output/LayerNorm/gamma*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:

Obert/encoder/layer_11/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

=bert/encoder/layer_11/attention/output/LayerNorm/moments/meanMean*bert/encoder/layer_11/attention/output/addObert/encoder/layer_11/attention/output/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
Ć
Ebert/encoder/layer_11/attention/output/LayerNorm/moments/StopGradientStopGradient=bert/encoder/layer_11/attention/output/LayerNorm/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Jbert/encoder/layer_11/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference*bert/encoder/layer_11/attention/output/addEbert/encoder/layer_11/attention/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Sbert/encoder/layer_11/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
š
Abert/encoder/layer_11/attention/output/LayerNorm/moments/varianceMeanJbert/encoder/layer_11/attention/output/LayerNorm/moments/SquaredDifferenceSbert/encoder/layer_11/attention/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ěź+
ü
>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/addAddAbert/encoder/layer_11/attention/output/LayerNorm/moments/variance@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ť
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/RsqrtRsqrt>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
÷
>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mulMul@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/Rsqrt;bert/encoder/layer_11/attention/output/LayerNorm/gamma/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ć
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_1Mul*bert/encoder/layer_11/attention/output/add>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_2Mul=bert/encoder/layer_11/attention/output/LayerNorm/moments/mean>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/subSub:bert/encoder/layer_11/attention/output/LayerNorm/beta/read@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ü
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1Add@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_1>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ç
Rbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ú
Qbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ü
Sbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ř
\bert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
seed2 
ů
Pbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normalAddPbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:

ë
/bert/encoder/layer_11/intermediate/dense/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel
×
6bert/encoder/layer_11/intermediate/dense/kernel/AssignAssign/bert/encoder/layer_11/intermediate/dense/kernelLbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ŕ
4bert/encoder/layer_11/intermediate/dense/kernel/readIdentity/bert/encoder/layer_11/intermediate/dense/kernel*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:

Ü
Obert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ě
Ebert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ů
?bert/encoder/layer_11/intermediate/dense/bias/Initializer/zerosFillObert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/shape_as_tensorEbert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/Const*
T0*

index_type0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:
Ý
-bert/encoder/layer_11/intermediate/dense/bias
VariableV2*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ż
4bert/encoder/layer_11/intermediate/dense/bias/AssignAssign-bert/encoder/layer_11/intermediate/dense/bias?bert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
Ő
2bert/encoder/layer_11/intermediate/dense/bias/readIdentity-bert/encoder/layer_11/intermediate/dense/bias*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:

/bert/encoder/layer_11/intermediate/dense/MatMulMatMul@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_14bert/encoder/layer_11/intermediate/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ę
0bert/encoder/layer_11/intermediate/dense/BiasAddBiasAdd/bert/encoder/layer_11/intermediate/dense/MatMul2bert/encoder/layer_11/intermediate/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
.bert/encoder/layer_11/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
Č
,bert/encoder/layer_11/intermediate/dense/PowPow0bert/encoder/layer_11/intermediate/dense/BiasAdd.bert/encoder/layer_11/intermediate/dense/Pow/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
.bert/encoder/layer_11/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
Ä
,bert/encoder/layer_11/intermediate/dense/mulMul.bert/encoder/layer_11/intermediate/dense/mul/x,bert/encoder/layer_11/intermediate/dense/Pow*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
,bert/encoder/layer_11/intermediate/dense/addAdd0bert/encoder/layer_11/intermediate/dense/BiasAdd,bert/encoder/layer_11/intermediate/dense/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
0bert/encoder/layer_11/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Č
.bert/encoder/layer_11/intermediate/dense/mul_1Mul0bert/encoder/layer_11/intermediate/dense/mul_1/x,bert/encoder/layer_11/intermediate/dense/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

-bert/encoder/layer_11/intermediate/dense/TanhTanh.bert/encoder/layer_11/intermediate/dense/mul_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
0bert/encoder/layer_11/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
É
.bert/encoder/layer_11/intermediate/dense/add_1Add0bert/encoder/layer_11/intermediate/dense/add_1/x-bert/encoder/layer_11/intermediate/dense/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
0bert/encoder/layer_11/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ę
.bert/encoder/layer_11/intermediate/dense/mul_2Mul0bert/encoder/layer_11/intermediate/dense/mul_2/x.bert/encoder/layer_11/intermediate/dense/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
.bert/encoder/layer_11/intermediate/dense/mul_3Mul0bert/encoder/layer_11/intermediate/dense/BiasAdd.bert/encoder/layer_11/intermediate/dense/mul_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
Lbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
dtype0*
_output_shapes
:
Î
Kbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
dtype0*
_output_shapes
: 
Đ
Mbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×Ł<*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel
Ć
Vbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/shape*

seed *
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:

á
Jbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mulMulVbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalMbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

Ď
Fbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normalAddJbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mulKbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mean*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

ß
)bert/encoder/layer_11/output/dense/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
	container 
ż
0bert/encoder/layer_11/output/dense/kernel/AssignAssign)bert/encoder/layer_11/output/dense/kernelFbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Î
.bert/encoder/layer_11/output/dense/kernel/readIdentity)bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:
*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel
Ä
9bert/encoder/layer_11/output/dense/bias/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
dtype0*
_output_shapes	
:
Ń
'bert/encoder/layer_11/output/dense/bias
VariableV2*
shared_name *:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
§
.bert/encoder/layer_11/output/dense/bias/AssignAssign'bert/encoder/layer_11/output/dense/bias9bert/encoder/layer_11/output/dense/bias/Initializer/zeros*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ă
,bert/encoder/layer_11/output/dense/bias/readIdentity'bert/encoder/layer_11/output/dense/bias*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
_output_shapes	
:
ě
)bert/encoder/layer_11/output/dense/MatMulMatMul.bert/encoder/layer_11/intermediate/dense/mul_3.bert/encoder/layer_11/output/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ř
*bert/encoder/layer_11/output/dense/BiasAddBiasAdd)bert/encoder/layer_11/output/dense/MatMul,bert/encoder/layer_11/output/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
 bert/encoder/layer_11/output/addAdd*bert/encoder/layer_11/output/dense/BiasAdd@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
=bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ů
+bert/encoder/layer_11/output/LayerNorm/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta
ˇ
2bert/encoder/layer_11/output/LayerNorm/beta/AssignAssign+bert/encoder/layer_11/output/LayerNorm/beta=bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zeros*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
Ď
0bert/encoder/layer_11/output/LayerNorm/beta/readIdentity+bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta
Í
=bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ű
,bert/encoder/layer_11/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
	container *
shape:
ş
3bert/encoder/layer_11/output/LayerNorm/gamma/AssignAssign,bert/encoder/layer_11/output/LayerNorm/gamma=bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/ones*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ň
1bert/encoder/layer_11/output/LayerNorm/gamma/readIdentity,bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma

Ebert/encoder/layer_11/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ó
3bert/encoder/layer_11/output/LayerNorm/moments/meanMean bert/encoder/layer_11/output/addEbert/encoder/layer_11/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
;bert/encoder/layer_11/output/LayerNorm/moments/StopGradientStopGradient3bert/encoder/layer_11/output/LayerNorm/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ç
@bert/encoder/layer_11/output/LayerNorm/moments/SquaredDifferenceSquaredDifference bert/encoder/layer_11/output/add;bert/encoder/layer_11/output/LayerNorm/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_11/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

7bert/encoder/layer_11/output/LayerNorm/moments/varianceMean@bert/encoder/layer_11/output/LayerNorm/moments/SquaredDifferenceIbert/encoder/layer_11/output/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
{
6bert/encoder/layer_11/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 
Ţ
4bert/encoder/layer_11/output/LayerNorm/batchnorm/addAdd7bert/encoder/layer_11/output/LayerNorm/moments/variance6bert/encoder/layer_11/output/LayerNorm/batchnorm/add/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
§
6bert/encoder/layer_11/output/LayerNorm/batchnorm/RsqrtRsqrt4bert/encoder/layer_11/output/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
4bert/encoder/layer_11/output/LayerNorm/batchnorm/mulMul6bert/encoder/layer_11/output/LayerNorm/batchnorm/Rsqrt1bert/encoder/layer_11/output/LayerNorm/gamma/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_1Mul bert/encoder/layer_11/output/add4bert/encoder/layer_11/output/LayerNorm/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ű
6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_2Mul3bert/encoder/layer_11/output/LayerNorm/moments/mean4bert/encoder/layer_11/output/LayerNorm/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
4bert/encoder/layer_11/output/LayerNorm/batchnorm/subSub0bert/encoder/layer_11/output/LayerNorm/beta/read6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ţ
6bert/encoder/layer_11/output/LayerNorm/batchnorm/add_1Add6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_14bert/encoder/layer_11/output/LayerNorm/batchnorm/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

bert/encoder/Shape_3Shape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
out_type0*
_output_shapes
:*
T0
l
"bert/encoder/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
n
$bert/encoder/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_3StridedSlicebert/encoder/Shape_3"bert/encoder/strided_slice_3/stack$bert/encoder/strided_slice_3/stack_1$bert/encoder/strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
a
bert/encoder/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
a
bert/encoder/Reshape_2/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ź
bert/encoder/Reshape_2/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_2/shape/1bert/encoder/Reshape_2/shape/2*

axis *
N*
_output_shapes
:*
T0
ź
bert/encoder/Reshape_2Reshape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_2/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/Shape_4Shape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0
l
"bert/encoder/strided_slice_4/stackConst*
dtype0*
_output_shapes
:*
valueB: 
n
$bert/encoder/strided_slice_4/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
n
$bert/encoder/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_4StridedSlicebert/encoder/Shape_4"bert/encoder/strided_slice_4/stack$bert/encoder/strided_slice_4/stack_1$bert/encoder/strided_slice_4/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
a
bert/encoder/Reshape_3/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
a
bert/encoder/Reshape_3/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ź
bert/encoder/Reshape_3/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_3/shape/1bert/encoder/Reshape_3/shape/2*
N*
_output_shapes
:*
T0*

axis 
ź
bert/encoder/Reshape_3Reshape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_3/shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

bert/encoder/Shape_5Shape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
l
"bert/encoder/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_5/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_5/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ä
bert/encoder/strided_slice_5StridedSlicebert/encoder/Shape_5"bert/encoder/strided_slice_5/stack$bert/encoder/strided_slice_5/stack_1$bert/encoder/strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
a
bert/encoder/Reshape_4/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
a
bert/encoder/Reshape_4/shape/2Const*
dtype0*
_output_shapes
: *
value
B :
ź
bert/encoder/Reshape_4/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_4/shape/1bert/encoder/Reshape_4/shape/2*
T0*

axis *
N*
_output_shapes
:
ź
bert/encoder/Reshape_4Reshape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_4/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/Shape_6Shape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
l
"bert/encoder/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_6StridedSlicebert/encoder/Shape_6"bert/encoder/strided_slice_6/stack$bert/encoder/strided_slice_6/stack_1$bert/encoder/strided_slice_6/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
a
bert/encoder/Reshape_5/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
a
bert/encoder/Reshape_5/shape/2Const*
dtype0*
_output_shapes
: *
value
B :
ź
bert/encoder/Reshape_5/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_5/shape/1bert/encoder/Reshape_5/shape/2*
T0*

axis *
N*
_output_shapes
:
ź
bert/encoder/Reshape_5Reshape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_5/shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

bert/encoder/Shape_7Shape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
l
"bert/encoder/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_7/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_7StridedSlicebert/encoder/Shape_7"bert/encoder/strided_slice_7/stack$bert/encoder/strided_slice_7/stack_1$bert/encoder/strided_slice_7/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
a
bert/encoder/Reshape_6/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
a
bert/encoder/Reshape_6/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ź
bert/encoder/Reshape_6/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_6/shape/1bert/encoder/Reshape_6/shape/2*
_output_shapes
:*
T0*

axis *
N
ź
bert/encoder/Reshape_6Reshape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_6/shape*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

bert/encoder/Shape_8Shape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0
l
"bert/encoder/strided_slice_8/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_8/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_8StridedSlicebert/encoder/Shape_8"bert/encoder/strided_slice_8/stack$bert/encoder/strided_slice_8/stack_1$bert/encoder/strided_slice_8/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
a
bert/encoder/Reshape_7/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
a
bert/encoder/Reshape_7/shape/2Const*
_output_shapes
: *
value
B :*
dtype0
ź
bert/encoder/Reshape_7/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_7/shape/1bert/encoder/Reshape_7/shape/2*
T0*

axis *
N*
_output_shapes
:
ź
bert/encoder/Reshape_7Reshape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_7/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/Shape_9Shape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
out_type0*
_output_shapes
:*
T0
l
"bert/encoder/strided_slice_9/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_9/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$bert/encoder/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
bert/encoder/strided_slice_9StridedSlicebert/encoder/Shape_9"bert/encoder/strided_slice_9/stack$bert/encoder/strided_slice_9/stack_1$bert/encoder/strided_slice_9/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
a
bert/encoder/Reshape_8/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
a
bert/encoder/Reshape_8/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ź
bert/encoder/Reshape_8/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_8/shape/1bert/encoder/Reshape_8/shape/2*
T0*

axis *
N*
_output_shapes
:
ź
bert/encoder/Reshape_8Reshape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_8/shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

bert/encoder/Shape_10Shape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0
m
#bert/encoder/strided_slice_10/stackConst*
dtype0*
_output_shapes
:*
valueB: 
o
%bert/encoder/strided_slice_10/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%bert/encoder/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
bert/encoder/strided_slice_10StridedSlicebert/encoder/Shape_10#bert/encoder/strided_slice_10/stack%bert/encoder/strided_slice_10/stack_1%bert/encoder/strided_slice_10/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
a
bert/encoder/Reshape_9/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
a
bert/encoder/Reshape_9/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ź
bert/encoder/Reshape_9/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_9/shape/1bert/encoder/Reshape_9/shape/2*
T0*

axis *
N*
_output_shapes
:
ź
bert/encoder/Reshape_9Reshape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_9/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/Shape_11Shape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0
m
#bert/encoder/strided_slice_11/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%bert/encoder/strided_slice_11/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%bert/encoder/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
bert/encoder/strided_slice_11StridedSlicebert/encoder/Shape_11#bert/encoder/strided_slice_11/stack%bert/encoder/strided_slice_11/stack_1%bert/encoder/strided_slice_11/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
b
bert/encoder/Reshape_10/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
b
bert/encoder/Reshape_10/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ż
bert/encoder/Reshape_10/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_10/shape/1bert/encoder/Reshape_10/shape/2*
T0*

axis *
N*
_output_shapes
:
ž
bert/encoder/Reshape_10Reshape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_10/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/Shape_12Shape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
m
#bert/encoder/strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%bert/encoder/strided_slice_12/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
o
%bert/encoder/strided_slice_12/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
É
bert/encoder/strided_slice_12StridedSlicebert/encoder/Shape_12#bert/encoder/strided_slice_12/stack%bert/encoder/strided_slice_12/stack_1%bert/encoder/strided_slice_12/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
b
bert/encoder/Reshape_11/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 
b
bert/encoder/Reshape_11/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ż
bert/encoder/Reshape_11/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_11/shape/1bert/encoder/Reshape_11/shape/2*

axis *
N*
_output_shapes
:*
T0
ž
bert/encoder/Reshape_11Reshape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_11/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/Shape_13Shape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
m
#bert/encoder/strided_slice_13/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%bert/encoder/strided_slice_13/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
o
%bert/encoder/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
bert/encoder/strided_slice_13StridedSlicebert/encoder/Shape_13#bert/encoder/strided_slice_13/stack%bert/encoder/strided_slice_13/stack_1%bert/encoder/strided_slice_13/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
b
bert/encoder/Reshape_12/shape/1Const*
dtype0*
_output_shapes
: *
value
B :
b
bert/encoder/Reshape_12/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ż
bert/encoder/Reshape_12/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_12/shape/1bert/encoder/Reshape_12/shape/2*

axis *
N*
_output_shapes
:*
T0
ż
bert/encoder/Reshape_12Reshape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_12/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/encoder/Shape_14Shape6bert/encoder/layer_11/output/LayerNorm/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
m
#bert/encoder/strided_slice_14/stackConst*
_output_shapes
:*
valueB: *
dtype0
o
%bert/encoder/strided_slice_14/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%bert/encoder/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
bert/encoder/strided_slice_14StridedSlicebert/encoder/Shape_14#bert/encoder/strided_slice_14/stack%bert/encoder/strided_slice_14/stack_1%bert/encoder/strided_slice_14/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
b
bert/encoder/Reshape_13/shape/1Const*
_output_shapes
: *
value
B :*
dtype0
b
bert/encoder/Reshape_13/shape/2Const*
value
B :*
dtype0*
_output_shapes
: 
ż
bert/encoder/Reshape_13/shapePackbert/encoder/strided_slice_2bert/encoder/Reshape_13/shape/1bert/encoder/Reshape_13/shape/2*

axis *
N*
_output_shapes
:*
T0
ż
bert/encoder/Reshape_13Reshape6bert/encoder/layer_11/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_13/shape*
T0*
Tshape0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
bert/pooler/strided_slice/stackConst*
dtype0*
_output_shapes
:*!
valueB"            
v
!bert/pooler/strided_slice/stack_1Const*
_output_shapes
:*!
valueB"           *
dtype0
v
!bert/pooler/strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
Ń
bert/pooler/strided_sliceStridedSlicebert/encoder/Reshape_13bert/pooler/strided_slice/stack!bert/pooler/strided_slice/stack_1!bert/pooler/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/pooler/SqueezeSqueezebert/pooler/strided_slice*
squeeze_dims
*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
;bert/pooler/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *+
_class!
loc:@bert/pooler/dense/kernel*
dtype0*
_output_shapes
:
Ź
:bert/pooler/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *+
_class!
loc:@bert/pooler/dense/kernel*
dtype0*
_output_shapes
: 
Ž
<bert/pooler/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*+
_class!
loc:@bert/pooler/dense/kernel*
dtype0*
_output_shapes
: 

Ebert/pooler/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;bert/pooler/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*+
_class!
loc:@bert/pooler/dense/kernel*
seed2 

9bert/pooler/dense/kernel/Initializer/truncated_normal/mulMulEbert/pooler/dense/kernel/Initializer/truncated_normal/TruncatedNormal<bert/pooler/dense/kernel/Initializer/truncated_normal/stddev*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:


5bert/pooler/dense/kernel/Initializer/truncated_normalAdd9bert/pooler/dense/kernel/Initializer/truncated_normal/mul:bert/pooler/dense/kernel/Initializer/truncated_normal/mean*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:

˝
bert/pooler/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *+
_class!
loc:@bert/pooler/dense/kernel*
	container *
shape:

ű
bert/pooler/dense/kernel/AssignAssignbert/pooler/dense/kernel5bert/pooler/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
use_locking(*
T0*+
_class!
loc:@bert/pooler/dense/kernel*
validate_shape(

bert/pooler/dense/kernel/readIdentitybert/pooler/dense/kernel*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:
*
T0
˘
(bert/pooler/dense/bias/Initializer/zerosConst*
valueB*    *)
_class
loc:@bert/pooler/dense/bias*
dtype0*
_output_shapes	
:
Ż
bert/pooler/dense/bias
VariableV2*
shared_name *)
_class
loc:@bert/pooler/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
ă
bert/pooler/dense/bias/AssignAssignbert/pooler/dense/bias(bert/pooler/dense/bias/Initializer/zeros*
T0*)
_class
loc:@bert/pooler/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

bert/pooler/dense/bias/readIdentitybert/pooler/dense/bias*
T0*)
_class
loc:@bert/pooler/dense/bias*
_output_shapes	
:
Ż
bert/pooler/dense/MatMulMatMulbert/pooler/Squeezebert/pooler/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ľ
bert/pooler/dense/BiasAddBiasAddbert/pooler/dense/MatMulbert/pooler/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
bert/pooler/dense/TanhTanhbert/pooler/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
1output_weights/Initializer/truncated_normal/shapeConst*
valueB"      *!
_class
loc:@output_weights*
dtype0*
_output_shapes
:

0output_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *!
_class
loc:@output_weights*
dtype0*
_output_shapes
: 

2output_weights/Initializer/truncated_normal/stddevConst*
valueB
 *
×Ł<*!
_class
loc:@output_weights*
dtype0*
_output_shapes
: 
ô
;output_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1output_weights/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	*

seed *
T0*!
_class
loc:@output_weights*
seed2 
ô
/output_weights/Initializer/truncated_normal/mulMul;output_weights/Initializer/truncated_normal/TruncatedNormal2output_weights/Initializer/truncated_normal/stddev*!
_class
loc:@output_weights*
_output_shapes
:	*
T0
â
+output_weights/Initializer/truncated_normalAdd/output_weights/Initializer/truncated_normal/mul0output_weights/Initializer/truncated_normal/mean*
T0*!
_class
loc:@output_weights*
_output_shapes
:	
§
output_weights
VariableV2*
shared_name *!
_class
loc:@output_weights*
	container *
shape:	*
dtype0*
_output_shapes
:	
Ň
output_weights/AssignAssignoutput_weights+output_weights/Initializer/truncated_normal*!
_class
loc:@output_weights*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
|
output_weights/readIdentityoutput_weights*
T0*!
_class
loc:@output_weights*
_output_shapes
:	

output_bias/Initializer/zerosConst*
valueB*    *
_class
loc:@output_bias*
dtype0*
_output_shapes
:

output_bias
VariableV2*
shared_name *
_class
loc:@output_bias*
	container *
shape:*
dtype0*
_output_shapes
:
ś
output_bias/AssignAssignoutput_biasoutput_bias/Initializer/zeros*
_class
loc:@output_bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
n
output_bias/readIdentityoutput_bias*
T0*
_class
loc:@output_bias*
_output_shapes
:

loss/MatMulMatMulbert/pooler/dense/Tanhoutput_weights/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(

loss/BiasAddBiasAddloss/MatMuloutput_bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
loss/SoftmaxSoftmaxloss/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
loss/LogSoftmax
LogSoftmaxloss/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Z
loss/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
loss/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
T
loss/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
ˇ
loss/one_hotOneHotlabel_ids_1loss/one_hot/depthloss/one_hot/on_valueloss/one_hot/off_value*
T0*
axis˙˙˙˙˙˙˙˙˙*
TI0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
loss/mulMulloss/one_hotloss/LogSoftmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
e
loss/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

loss/SumSumloss/mulloss/Sum/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
G
loss/NegNegloss/Sum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
e
	loss/MeanMeanloss/Neg
loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

checkpoint_initializer/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0

#checkpoint_initializer/tensor_namesConst"/device:CPU:0*3
value*B(Bbert/embeddings/LayerNorm/beta*
dtype0*
_output_shapes
:

'checkpoint_initializer/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Í
checkpoint_initializer	RestoreV2checkpoint_initializer/prefix#checkpoint_initializer/tensor_names'checkpoint_initializer/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ę
AssignAssignbert/embeddings/LayerNorm/betacheckpoint_initializer*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta

checkpoint_initializer_1/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 

%checkpoint_initializer_1/tensor_namesConst"/device:CPU:0*4
value+B)Bbert/embeddings/LayerNorm/gamma*
dtype0*
_output_shapes
:

)checkpoint_initializer_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ő
checkpoint_initializer_1	RestoreV2checkpoint_initializer_1/prefix%checkpoint_initializer_1/tensor_names)checkpoint_initializer_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Đ
Assign_1Assignbert/embeddings/LayerNorm/gammacheckpoint_initializer_1*
use_locking(*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

checkpoint_initializer_2/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
 
%checkpoint_initializer_2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*8
value/B-B#bert/embeddings/position_embeddings

)checkpoint_initializer_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ú
checkpoint_initializer_2	RestoreV2checkpoint_initializer_2/prefix%checkpoint_initializer_2/tensor_names)checkpoint_initializer_2/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ý
Assign_2Assign#bert/embeddings/position_embeddingscheckpoint_initializer_2*
use_locking(*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings*
validate_shape(* 
_output_shapes
:


checkpoint_initializer_3/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
˘
%checkpoint_initializer_3/tensor_namesConst"/device:CPU:0*:
value1B/B%bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
:

)checkpoint_initializer_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_3	RestoreV2checkpoint_initializer_3/prefix%checkpoint_initializer_3/tensor_names)checkpoint_initializer_3/shape_and_slices"/device:CPU:0*
_output_shapes
:	*
dtypes
2
ŕ
Assign_3Assign%bert/embeddings/token_type_embeddingscheckpoint_initializer_3*
use_locking(*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
validate_shape(*
_output_shapes
:	

checkpoint_initializer_4/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 

%checkpoint_initializer_4/tensor_namesConst"/device:CPU:0*4
value+B)Bbert/embeddings/word_embeddings*
dtype0*
_output_shapes
:

)checkpoint_initializer_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ű
checkpoint_initializer_4	RestoreV2checkpoint_initializer_4/prefix%checkpoint_initializer_4/tensor_names)checkpoint_initializer_4/shape_and_slices"/device:CPU:0*!
_output_shapes
:Ľ*
dtypes
2
Ö
Assign_4Assignbert/embeddings/word_embeddingscheckpoint_initializer_4*
validate_shape(*!
_output_shapes
:Ľ*
use_locking(*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings

checkpoint_initializer_5/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
%checkpoint_initializer_5/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_0/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

)checkpoint_initializer_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ő
checkpoint_initializer_5	RestoreV2checkpoint_initializer_5/prefix%checkpoint_initializer_5/tensor_names)checkpoint_initializer_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ú
Assign_5Assign4bert/encoder/layer_0/attention/output/LayerNorm/betacheckpoint_initializer_5*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

checkpoint_initializer_6/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
˛
%checkpoint_initializer_6/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_0/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

)checkpoint_initializer_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ő
checkpoint_initializer_6	RestoreV2checkpoint_initializer_6/prefix%checkpoint_initializer_6/tensor_names)checkpoint_initializer_6/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ü
Assign_6Assign5bert/encoder/layer_0/attention/output/LayerNorm/gammacheckpoint_initializer_6*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
validate_shape(

checkpoint_initializer_7/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
%checkpoint_initializer_7/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_0/attention/output/dense/bias*
dtype0*
_output_shapes
:

)checkpoint_initializer_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ő
checkpoint_initializer_7	RestoreV2checkpoint_initializer_7/prefix%checkpoint_initializer_7/tensor_names)checkpoint_initializer_7/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň
Assign_7Assign0bert/encoder/layer_0/attention/output/dense/biascheckpoint_initializer_7*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
validate_shape(

checkpoint_initializer_8/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
%checkpoint_initializer_8/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_0/attention/output/dense/kernel*
dtype0*
_output_shapes
:

)checkpoint_initializer_8/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ú
checkpoint_initializer_8	RestoreV2checkpoint_initializer_8/prefix%checkpoint_initializer_8/tensor_names)checkpoint_initializer_8/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű
Assign_8Assign2bert/encoder/layer_0/attention/output/dense/kernelcheckpoint_initializer_8*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


checkpoint_initializer_9/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
%checkpoint_initializer_9/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_0/attention/self/key/bias*
dtype0*
_output_shapes
:

)checkpoint_initializer_9/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ő
checkpoint_initializer_9	RestoreV2checkpoint_initializer_9/prefix%checkpoint_initializer_9/tensor_names)checkpoint_initializer_9/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ę
Assign_9Assign,bert/encoder/layer_0/attention/self/key/biascheckpoint_initializer_9*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_10/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_10/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_0/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_10	RestoreV2 checkpoint_initializer_10/prefix&checkpoint_initializer_10/tensor_names*checkpoint_initializer_10/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ő
	Assign_10Assign.bert/encoder/layer_0/attention/self/key/kernelcheckpoint_initializer_10*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel

 checkpoint_initializer_11/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_11/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_0/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_11	RestoreV2 checkpoint_initializer_11/prefix&checkpoint_initializer_11/tensor_names*checkpoint_initializer_11/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
đ
	Assign_11Assign.bert/encoder/layer_0/attention/self/query/biascheckpoint_initializer_11*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
validate_shape(

 checkpoint_initializer_12/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_12/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_12	RestoreV2 checkpoint_initializer_12/prefix&checkpoint_initializer_12/tensor_names*checkpoint_initializer_12/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ů
	Assign_12Assign0bert/encoder/layer_0/attention/self/query/kernelcheckpoint_initializer_12*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_13/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_13/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_0/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_13/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ů
checkpoint_initializer_13	RestoreV2 checkpoint_initializer_13/prefix&checkpoint_initializer_13/tensor_names*checkpoint_initializer_13/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
đ
	Assign_13Assign.bert/encoder/layer_0/attention/self/value/biascheckpoint_initializer_13*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_14/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_14/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_0/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_14/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_14	RestoreV2 checkpoint_initializer_14/prefix&checkpoint_initializer_14/tensor_names*checkpoint_initializer_14/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ů
	Assign_14Assign0bert/encoder/layer_0/attention/self/value/kernelcheckpoint_initializer_14*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

 checkpoint_initializer_15/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_15/tensor_namesConst"/device:CPU:0*
_output_shapes
:*A
value8B6B,bert/encoder/layer_0/intermediate/dense/bias*
dtype0

*checkpoint_initializer_15/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_15	RestoreV2 checkpoint_initializer_15/prefix&checkpoint_initializer_15/tensor_names*checkpoint_initializer_15/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_15Assign,bert/encoder/layer_0/intermediate/dense/biascheckpoint_initializer_15*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_16/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_16/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_0/intermediate/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_16/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_16	RestoreV2 checkpoint_initializer_16/prefix&checkpoint_initializer_16/tensor_names*checkpoint_initializer_16/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ő
	Assign_16Assign.bert/encoder/layer_0/intermediate/dense/kernelcheckpoint_initializer_16*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_17/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¨
&checkpoint_initializer_17/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_0/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_17/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ů
checkpoint_initializer_17	RestoreV2 checkpoint_initializer_17/prefix&checkpoint_initializer_17/tensor_names*checkpoint_initializer_17/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
č
	Assign_17Assign*bert/encoder/layer_0/output/LayerNorm/betacheckpoint_initializer_17*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

 checkpoint_initializer_18/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
&checkpoint_initializer_18/tensor_namesConst"/device:CPU:0*
_output_shapes
:*@
value7B5B+bert/encoder/layer_0/output/LayerNorm/gamma*
dtype0

*checkpoint_initializer_18/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_18	RestoreV2 checkpoint_initializer_18/prefix&checkpoint_initializer_18/tensor_names*checkpoint_initializer_18/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę
	Assign_18Assign+bert/encoder/layer_0/output/LayerNorm/gammacheckpoint_initializer_18*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_19/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¤
&checkpoint_initializer_19/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_0/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_19/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_19	RestoreV2 checkpoint_initializer_19/prefix&checkpoint_initializer_19/tensor_names*checkpoint_initializer_19/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ŕ
	Assign_19Assign&bert/encoder/layer_0/output/dense/biascheckpoint_initializer_19*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_20/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ś
&checkpoint_initializer_20/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_20/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_20	RestoreV2 checkpoint_initializer_20/prefix&checkpoint_initializer_20/tensor_names*checkpoint_initializer_20/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

é
	Assign_20Assign(bert/encoder/layer_0/output/dense/kernelcheckpoint_initializer_20*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel

 checkpoint_initializer_21/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
˛
&checkpoint_initializer_21/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_1/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_21/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_21	RestoreV2 checkpoint_initializer_21/prefix&checkpoint_initializer_21/tensor_names*checkpoint_initializer_21/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ü
	Assign_21Assign4bert/encoder/layer_1/attention/output/LayerNorm/betacheckpoint_initializer_21*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_22/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
ł
&checkpoint_initializer_22/tensor_namesConst"/device:CPU:0*
_output_shapes
:*J
valueAB?B5bert/encoder/layer_1/attention/output/LayerNorm/gamma*
dtype0

*checkpoint_initializer_22/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_22	RestoreV2 checkpoint_initializer_22/prefix&checkpoint_initializer_22/tensor_names*checkpoint_initializer_22/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ
	Assign_22Assign5bert/encoder/layer_1/attention/output/LayerNorm/gammacheckpoint_initializer_22*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_23/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_23/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_1/attention/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_23/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_23	RestoreV2 checkpoint_initializer_23/prefix&checkpoint_initializer_23/tensor_names*checkpoint_initializer_23/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ô
	Assign_23Assign0bert/encoder/layer_1/attention/output/dense/biascheckpoint_initializer_23*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

 checkpoint_initializer_24/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
°
&checkpoint_initializer_24/tensor_namesConst"/device:CPU:0*
_output_shapes
:*G
value>B<B2bert/encoder/layer_1/attention/output/dense/kernel*
dtype0

*checkpoint_initializer_24/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_24	RestoreV2 checkpoint_initializer_24/prefix&checkpoint_initializer_24/tensor_names*checkpoint_initializer_24/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ý
	Assign_24Assign2bert/encoder/layer_1/attention/output/dense/kernelcheckpoint_initializer_24*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel

 checkpoint_initializer_25/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_25/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_1/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_25/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_25	RestoreV2 checkpoint_initializer_25/prefix&checkpoint_initializer_25/tensor_names*checkpoint_initializer_25/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_25Assign,bert/encoder/layer_1/attention/self/key/biascheckpoint_initializer_25*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_26/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_26/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_1/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_26/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ţ
checkpoint_initializer_26	RestoreV2 checkpoint_initializer_26/prefix&checkpoint_initializer_26/tensor_names*checkpoint_initializer_26/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ő
	Assign_26Assign.bert/encoder/layer_1/attention/self/key/kernelcheckpoint_initializer_26*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_27/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ź
&checkpoint_initializer_27/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_1/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_27/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_27	RestoreV2 checkpoint_initializer_27/prefix&checkpoint_initializer_27/tensor_names*checkpoint_initializer_27/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
đ
	Assign_27Assign.bert/encoder/layer_1/attention/self/query/biascheckpoint_initializer_27*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias

 checkpoint_initializer_28/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_28/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_1/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_28/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_28	RestoreV2 checkpoint_initializer_28/prefix&checkpoint_initializer_28/tensor_names*checkpoint_initializer_28/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ů
	Assign_28Assign0bert/encoder/layer_1/attention/self/query/kernelcheckpoint_initializer_28*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_29/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_29/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_1/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_29/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_29	RestoreV2 checkpoint_initializer_29/prefix&checkpoint_initializer_29/tensor_names*checkpoint_initializer_29/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
đ
	Assign_29Assign.bert/encoder/layer_1/attention/self/value/biascheckpoint_initializer_29*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias

 checkpoint_initializer_30/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_30/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_1/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_30/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_30	RestoreV2 checkpoint_initializer_30/prefix&checkpoint_initializer_30/tensor_names*checkpoint_initializer_30/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ů
	Assign_30Assign0bert/encoder/layer_1/attention/self/value/kernelcheckpoint_initializer_30*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_31/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_31/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_1/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_31/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_31	RestoreV2 checkpoint_initializer_31/prefix&checkpoint_initializer_31/tensor_names*checkpoint_initializer_31/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_31Assign,bert/encoder/layer_1/intermediate/dense/biascheckpoint_initializer_31*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias

 checkpoint_initializer_32/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_32/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_1/intermediate/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_32/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_32	RestoreV2 checkpoint_initializer_32/prefix&checkpoint_initializer_32/tensor_names*checkpoint_initializer_32/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ő
	Assign_32Assign.bert/encoder/layer_1/intermediate/dense/kernelcheckpoint_initializer_32*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel

 checkpoint_initializer_33/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¨
&checkpoint_initializer_33/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_1/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_33/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_33	RestoreV2 checkpoint_initializer_33/prefix&checkpoint_initializer_33/tensor_names*checkpoint_initializer_33/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
č
	Assign_33Assign*bert/encoder/layer_1/output/LayerNorm/betacheckpoint_initializer_33*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_34/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Š
&checkpoint_initializer_34/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*@
value7B5B+bert/encoder/layer_1/output/LayerNorm/gamma

*checkpoint_initializer_34/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_34	RestoreV2 checkpoint_initializer_34/prefix&checkpoint_initializer_34/tensor_names*checkpoint_initializer_34/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ę
	Assign_34Assign+bert/encoder/layer_1/output/LayerNorm/gammacheckpoint_initializer_34*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_35/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¤
&checkpoint_initializer_35/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_1/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_35/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_35	RestoreV2 checkpoint_initializer_35/prefix&checkpoint_initializer_35/tensor_names*checkpoint_initializer_35/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ŕ
	Assign_35Assign&bert/encoder/layer_1/output/dense/biascheckpoint_initializer_35*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_36/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ś
&checkpoint_initializer_36/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_1/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_36/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ţ
checkpoint_initializer_36	RestoreV2 checkpoint_initializer_36/prefix&checkpoint_initializer_36/tensor_names*checkpoint_initializer_36/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
é
	Assign_36Assign(bert/encoder/layer_1/output/dense/kernelcheckpoint_initializer_36*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel

 checkpoint_initializer_37/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ł
&checkpoint_initializer_37/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_10/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_37/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ů
checkpoint_initializer_37	RestoreV2 checkpoint_initializer_37/prefix&checkpoint_initializer_37/tensor_names*checkpoint_initializer_37/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ
	Assign_37Assign5bert/encoder/layer_10/attention/output/LayerNorm/betacheckpoint_initializer_37*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta

 checkpoint_initializer_38/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
&checkpoint_initializer_38/tensor_namesConst"/device:CPU:0*K
valueBB@B6bert/encoder/layer_10/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_38/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_38	RestoreV2 checkpoint_initializer_38/prefix&checkpoint_initializer_38/tensor_names*checkpoint_initializer_38/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:

	Assign_38Assign6bert/encoder/layer_10/attention/output/LayerNorm/gammacheckpoint_initializer_38*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_39/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ż
&checkpoint_initializer_39/tensor_namesConst"/device:CPU:0*
_output_shapes
:*F
value=B;B1bert/encoder/layer_10/attention/output/dense/bias*
dtype0

*checkpoint_initializer_39/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_39	RestoreV2 checkpoint_initializer_39/prefix&checkpoint_initializer_39/tensor_names*checkpoint_initializer_39/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ö
	Assign_39Assign1bert/encoder/layer_10/attention/output/dense/biascheckpoint_initializer_39*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_40/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
&checkpoint_initializer_40/tensor_namesConst"/device:CPU:0*H
value?B=B3bert/encoder/layer_10/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_40/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_40	RestoreV2 checkpoint_initializer_40/prefix&checkpoint_initializer_40/tensor_names*checkpoint_initializer_40/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

˙
	Assign_40Assign3bert/encoder/layer_10/attention/output/dense/kernelcheckpoint_initializer_40*
use_locking(*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_41/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
&checkpoint_initializer_41/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_10/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_41/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_41	RestoreV2 checkpoint_initializer_41/prefix&checkpoint_initializer_41/tensor_names*checkpoint_initializer_41/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î
	Assign_41Assign-bert/encoder/layer_10/attention/self/key/biascheckpoint_initializer_41*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_42/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_42/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*D
value;B9B/bert/encoder/layer_10/attention/self/key/kernel

*checkpoint_initializer_42/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_42	RestoreV2 checkpoint_initializer_42/prefix&checkpoint_initializer_42/tensor_names*checkpoint_initializer_42/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷
	Assign_42Assign/bert/encoder/layer_10/attention/self/key/kernelcheckpoint_initializer_42*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

 checkpoint_initializer_43/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
­
&checkpoint_initializer_43/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_10/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_43/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_43	RestoreV2 checkpoint_initializer_43/prefix&checkpoint_initializer_43/tensor_names*checkpoint_initializer_43/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ň
	Assign_43Assign/bert/encoder/layer_10/attention/self/query/biascheckpoint_initializer_43*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_44/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
&checkpoint_initializer_44/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_10/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_44/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ţ
checkpoint_initializer_44	RestoreV2 checkpoint_initializer_44/prefix&checkpoint_initializer_44/tensor_names*checkpoint_initializer_44/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű
	Assign_44Assign1bert/encoder/layer_10/attention/self/query/kernelcheckpoint_initializer_44*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel

 checkpoint_initializer_45/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_45/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_10/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_45/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_45	RestoreV2 checkpoint_initializer_45/prefix&checkpoint_initializer_45/tensor_names*checkpoint_initializer_45/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň
	Assign_45Assign/bert/encoder/layer_10/attention/self/value/biascheckpoint_initializer_45*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_46/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
&checkpoint_initializer_46/tensor_namesConst"/device:CPU:0*
_output_shapes
:*F
value=B;B1bert/encoder/layer_10/attention/self/value/kernel*
dtype0

*checkpoint_initializer_46/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_46	RestoreV2 checkpoint_initializer_46/prefix&checkpoint_initializer_46/tensor_names*checkpoint_initializer_46/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ű
	Assign_46Assign1bert/encoder/layer_10/attention/self/value/kernelcheckpoint_initializer_46*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

 checkpoint_initializer_47/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
&checkpoint_initializer_47/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_10/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_47/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_47	RestoreV2 checkpoint_initializer_47/prefix&checkpoint_initializer_47/tensor_names*checkpoint_initializer_47/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î
	Assign_47Assign-bert/encoder/layer_10/intermediate/dense/biascheckpoint_initializer_47*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_48/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_48/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_10/intermediate/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_48/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ţ
checkpoint_initializer_48	RestoreV2 checkpoint_initializer_48/prefix&checkpoint_initializer_48/tensor_names*checkpoint_initializer_48/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

÷
	Assign_48Assign/bert/encoder/layer_10/intermediate/dense/kernelcheckpoint_initializer_48*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_49/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
&checkpoint_initializer_49/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_10/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_49/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_49	RestoreV2 checkpoint_initializer_49/prefix&checkpoint_initializer_49/tensor_names*checkpoint_initializer_49/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę
	Assign_49Assign+bert/encoder/layer_10/output/LayerNorm/betacheckpoint_initializer_49*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_50/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_50/tensor_namesConst"/device:CPU:0*
_output_shapes
:*A
value8B6B,bert/encoder/layer_10/output/LayerNorm/gamma*
dtype0

*checkpoint_initializer_50/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_50	RestoreV2 checkpoint_initializer_50/prefix&checkpoint_initializer_50/tensor_names*checkpoint_initializer_50/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_50Assign,bert/encoder/layer_10/output/LayerNorm/gammacheckpoint_initializer_50*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_51/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ľ
&checkpoint_initializer_51/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*<
value3B1B'bert/encoder/layer_10/output/dense/bias

*checkpoint_initializer_51/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_51	RestoreV2 checkpoint_initializer_51/prefix&checkpoint_initializer_51/tensor_names*checkpoint_initializer_51/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
â
	Assign_51Assign'bert/encoder/layer_10/output/dense/biascheckpoint_initializer_51*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias

 checkpoint_initializer_52/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
§
&checkpoint_initializer_52/tensor_namesConst"/device:CPU:0*>
value5B3B)bert/encoder/layer_10/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_52/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ţ
checkpoint_initializer_52	RestoreV2 checkpoint_initializer_52/prefix&checkpoint_initializer_52/tensor_names*checkpoint_initializer_52/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ë
	Assign_52Assign)bert/encoder/layer_10/output/dense/kernelcheckpoint_initializer_52*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

 checkpoint_initializer_53/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
ł
&checkpoint_initializer_53/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_11/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_53/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_53	RestoreV2 checkpoint_initializer_53/prefix&checkpoint_initializer_53/tensor_names*checkpoint_initializer_53/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ
	Assign_53Assign5bert/encoder/layer_11/attention/output/LayerNorm/betacheckpoint_initializer_53*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_54/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
&checkpoint_initializer_54/tensor_namesConst"/device:CPU:0*K
valueBB@B6bert/encoder/layer_11/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_54/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_54	RestoreV2 checkpoint_initializer_54/prefix&checkpoint_initializer_54/tensor_names*checkpoint_initializer_54/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2

	Assign_54Assign6bert/encoder/layer_11/attention/output/LayerNorm/gammacheckpoint_initializer_54*
_output_shapes	
:*
use_locking(*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
validate_shape(

 checkpoint_initializer_55/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
&checkpoint_initializer_55/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_11/attention/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_55/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_55	RestoreV2 checkpoint_initializer_55/prefix&checkpoint_initializer_55/tensor_names*checkpoint_initializer_55/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ö
	Assign_55Assign1bert/encoder/layer_11/attention/output/dense/biascheckpoint_initializer_55*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias

 checkpoint_initializer_56/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
&checkpoint_initializer_56/tensor_namesConst"/device:CPU:0*H
value?B=B3bert/encoder/layer_11/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_56/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_56	RestoreV2 checkpoint_initializer_56/prefix&checkpoint_initializer_56/tensor_names*checkpoint_initializer_56/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

˙
	Assign_56Assign3bert/encoder/layer_11/attention/output/dense/kernelcheckpoint_initializer_56*
use_locking(*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_57/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
&checkpoint_initializer_57/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_11/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_57/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_57	RestoreV2 checkpoint_initializer_57/prefix&checkpoint_initializer_57/tensor_names*checkpoint_initializer_57/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î
	Assign_57Assign-bert/encoder/layer_11/attention/self/key/biascheckpoint_initializer_57*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_58/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
­
&checkpoint_initializer_58/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_11/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_58/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ţ
checkpoint_initializer_58	RestoreV2 checkpoint_initializer_58/prefix&checkpoint_initializer_58/tensor_names*checkpoint_initializer_58/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷
	Assign_58Assign/bert/encoder/layer_11/attention/self/key/kernelcheckpoint_initializer_58*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_59/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_59/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_11/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_59/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_59	RestoreV2 checkpoint_initializer_59/prefix&checkpoint_initializer_59/tensor_names*checkpoint_initializer_59/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ň
	Assign_59Assign/bert/encoder/layer_11/attention/self/query/biascheckpoint_initializer_59*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_60/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ż
&checkpoint_initializer_60/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_11/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_60/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_60	RestoreV2 checkpoint_initializer_60/prefix&checkpoint_initializer_60/tensor_names*checkpoint_initializer_60/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű
	Assign_60Assign1bert/encoder/layer_11/attention/self/query/kernelcheckpoint_initializer_60*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel

 checkpoint_initializer_61/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_61/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_11/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_61/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ů
checkpoint_initializer_61	RestoreV2 checkpoint_initializer_61/prefix&checkpoint_initializer_61/tensor_names*checkpoint_initializer_61/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ň
	Assign_61Assign/bert/encoder/layer_11/attention/self/value/biascheckpoint_initializer_61*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

 checkpoint_initializer_62/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
&checkpoint_initializer_62/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_11/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_62/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ţ
checkpoint_initializer_62	RestoreV2 checkpoint_initializer_62/prefix&checkpoint_initializer_62/tensor_names*checkpoint_initializer_62/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű
	Assign_62Assign1bert/encoder/layer_11/attention/self/value/kernelcheckpoint_initializer_62*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_63/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ť
&checkpoint_initializer_63/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_11/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_63/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_63	RestoreV2 checkpoint_initializer_63/prefix&checkpoint_initializer_63/tensor_names*checkpoint_initializer_63/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
î
	Assign_63Assign-bert/encoder/layer_11/intermediate/dense/biascheckpoint_initializer_63*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias

 checkpoint_initializer_64/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
­
&checkpoint_initializer_64/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*D
value;B9B/bert/encoder/layer_11/intermediate/dense/kernel

*checkpoint_initializer_64/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_64	RestoreV2 checkpoint_initializer_64/prefix&checkpoint_initializer_64/tensor_names*checkpoint_initializer_64/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

÷
	Assign_64Assign/bert/encoder/layer_11/intermediate/dense/kernelcheckpoint_initializer_64*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_65/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
&checkpoint_initializer_65/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_11/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_65/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_65	RestoreV2 checkpoint_initializer_65/prefix&checkpoint_initializer_65/tensor_names*checkpoint_initializer_65/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę
	Assign_65Assign+bert/encoder/layer_11/output/LayerNorm/betacheckpoint_initializer_65*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_66/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_66/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_11/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_66/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ů
checkpoint_initializer_66	RestoreV2 checkpoint_initializer_66/prefix&checkpoint_initializer_66/tensor_names*checkpoint_initializer_66/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ě
	Assign_66Assign,bert/encoder/layer_11/output/LayerNorm/gammacheckpoint_initializer_66*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
validate_shape(

 checkpoint_initializer_67/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ľ
&checkpoint_initializer_67/tensor_namesConst"/device:CPU:0*
_output_shapes
:*<
value3B1B'bert/encoder/layer_11/output/dense/bias*
dtype0

*checkpoint_initializer_67/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_67	RestoreV2 checkpoint_initializer_67/prefix&checkpoint_initializer_67/tensor_names*checkpoint_initializer_67/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
â
	Assign_67Assign'bert/encoder/layer_11/output/dense/biascheckpoint_initializer_67*
use_locking(*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_68/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
&checkpoint_initializer_68/tensor_namesConst"/device:CPU:0*>
value5B3B)bert/encoder/layer_11/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_68/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_68	RestoreV2 checkpoint_initializer_68/prefix&checkpoint_initializer_68/tensor_names*checkpoint_initializer_68/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ë
	Assign_68Assign)bert/encoder/layer_11/output/dense/kernelcheckpoint_initializer_68*
use_locking(*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_69/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
˛
&checkpoint_initializer_69/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_2/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_69/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_69	RestoreV2 checkpoint_initializer_69/prefix&checkpoint_initializer_69/tensor_names*checkpoint_initializer_69/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ü
	Assign_69Assign4bert/encoder/layer_2/attention/output/LayerNorm/betacheckpoint_initializer_69*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_70/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ł
&checkpoint_initializer_70/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_2/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_70/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_70	RestoreV2 checkpoint_initializer_70/prefix&checkpoint_initializer_70/tensor_names*checkpoint_initializer_70/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ
	Assign_70Assign5bert/encoder/layer_2/attention/output/LayerNorm/gammacheckpoint_initializer_70*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_71/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_71/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_2/attention/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_71/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_71	RestoreV2 checkpoint_initializer_71/prefix&checkpoint_initializer_71/tensor_names*checkpoint_initializer_71/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ô
	Assign_71Assign0bert/encoder/layer_2/attention/output/dense/biascheckpoint_initializer_71*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_72/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
°
&checkpoint_initializer_72/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*G
value>B<B2bert/encoder/layer_2/attention/output/dense/kernel

*checkpoint_initializer_72/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_72	RestoreV2 checkpoint_initializer_72/prefix&checkpoint_initializer_72/tensor_names*checkpoint_initializer_72/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ý
	Assign_72Assign2bert/encoder/layer_2/attention/output/dense/kernelcheckpoint_initializer_72*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

 checkpoint_initializer_73/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_73/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_2/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_73/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_73	RestoreV2 checkpoint_initializer_73/prefix&checkpoint_initializer_73/tensor_names*checkpoint_initializer_73/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_73Assign,bert/encoder/layer_2/attention/self/key/biascheckpoint_initializer_73*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias

 checkpoint_initializer_74/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ź
&checkpoint_initializer_74/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_2/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_74/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_74	RestoreV2 checkpoint_initializer_74/prefix&checkpoint_initializer_74/tensor_names*checkpoint_initializer_74/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ő
	Assign_74Assign.bert/encoder/layer_2/attention/self/key/kernelcheckpoint_initializer_74*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

 checkpoint_initializer_75/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_75/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_2/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_75/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_75	RestoreV2 checkpoint_initializer_75/prefix&checkpoint_initializer_75/tensor_names*checkpoint_initializer_75/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
đ
	Assign_75Assign.bert/encoder/layer_2/attention/self/query/biascheckpoint_initializer_75*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_76/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_76/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_2/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_76/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_76	RestoreV2 checkpoint_initializer_76/prefix&checkpoint_initializer_76/tensor_names*checkpoint_initializer_76/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ů
	Assign_76Assign0bert/encoder/layer_2/attention/self/query/kernelcheckpoint_initializer_76* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
validate_shape(

 checkpoint_initializer_77/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ź
&checkpoint_initializer_77/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_2/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_77/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ů
checkpoint_initializer_77	RestoreV2 checkpoint_initializer_77/prefix&checkpoint_initializer_77/tensor_names*checkpoint_initializer_77/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
đ
	Assign_77Assign.bert/encoder/layer_2/attention/self/value/biascheckpoint_initializer_77*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_78/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_78/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_2/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_78/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ţ
checkpoint_initializer_78	RestoreV2 checkpoint_initializer_78/prefix&checkpoint_initializer_78/tensor_names*checkpoint_initializer_78/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ů
	Assign_78Assign0bert/encoder/layer_2/attention/self/value/kernelcheckpoint_initializer_78*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel

 checkpoint_initializer_79/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_79/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_2/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_79/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ů
checkpoint_initializer_79	RestoreV2 checkpoint_initializer_79/prefix&checkpoint_initializer_79/tensor_names*checkpoint_initializer_79/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_79Assign,bert/encoder/layer_2/intermediate/dense/biascheckpoint_initializer_79*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_80/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ź
&checkpoint_initializer_80/tensor_namesConst"/device:CPU:0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_2/intermediate/dense/kernel*
dtype0

*checkpoint_initializer_80/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_80	RestoreV2 checkpoint_initializer_80/prefix&checkpoint_initializer_80/tensor_names*checkpoint_initializer_80/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ő
	Assign_80Assign.bert/encoder/layer_2/intermediate/dense/kernelcheckpoint_initializer_80*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel

 checkpoint_initializer_81/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¨
&checkpoint_initializer_81/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_2/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_81/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_81	RestoreV2 checkpoint_initializer_81/prefix&checkpoint_initializer_81/tensor_names*checkpoint_initializer_81/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
č
	Assign_81Assign*bert/encoder/layer_2/output/LayerNorm/betacheckpoint_initializer_81*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_82/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
&checkpoint_initializer_82/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_2/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_82/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_82	RestoreV2 checkpoint_initializer_82/prefix&checkpoint_initializer_82/tensor_names*checkpoint_initializer_82/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę
	Assign_82Assign+bert/encoder/layer_2/output/LayerNorm/gammacheckpoint_initializer_82*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_83/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¤
&checkpoint_initializer_83/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_2/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_83/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ů
checkpoint_initializer_83	RestoreV2 checkpoint_initializer_83/prefix&checkpoint_initializer_83/tensor_names*checkpoint_initializer_83/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ŕ
	Assign_83Assign&bert/encoder/layer_2/output/dense/biascheckpoint_initializer_83*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_84/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ś
&checkpoint_initializer_84/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_2/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_84/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_84	RestoreV2 checkpoint_initializer_84/prefix&checkpoint_initializer_84/tensor_names*checkpoint_initializer_84/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
é
	Assign_84Assign(bert/encoder/layer_2/output/dense/kernelcheckpoint_initializer_84*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_85/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
˛
&checkpoint_initializer_85/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4bert/encoder/layer_3/attention/output/LayerNorm/beta

*checkpoint_initializer_85/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ů
checkpoint_initializer_85	RestoreV2 checkpoint_initializer_85/prefix&checkpoint_initializer_85/tensor_names*checkpoint_initializer_85/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ü
	Assign_85Assign4bert/encoder/layer_3/attention/output/LayerNorm/betacheckpoint_initializer_85*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
validate_shape(

 checkpoint_initializer_86/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ł
&checkpoint_initializer_86/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_3/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_86/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_86	RestoreV2 checkpoint_initializer_86/prefix&checkpoint_initializer_86/tensor_names*checkpoint_initializer_86/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ
	Assign_86Assign5bert/encoder/layer_3/attention/output/LayerNorm/gammacheckpoint_initializer_86*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_87/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ž
&checkpoint_initializer_87/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_3/attention/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_87/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_87	RestoreV2 checkpoint_initializer_87/prefix&checkpoint_initializer_87/tensor_names*checkpoint_initializer_87/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ô
	Assign_87Assign0bert/encoder/layer_3/attention/output/dense/biascheckpoint_initializer_87*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_88/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
°
&checkpoint_initializer_88/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_3/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_88/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_88	RestoreV2 checkpoint_initializer_88/prefix&checkpoint_initializer_88/tensor_names*checkpoint_initializer_88/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ý
	Assign_88Assign2bert/encoder/layer_3/attention/output/dense/kernelcheckpoint_initializer_88*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_89/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_89/tensor_namesConst"/device:CPU:0*
_output_shapes
:*A
value8B6B,bert/encoder/layer_3/attention/self/key/bias*
dtype0

*checkpoint_initializer_89/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_89	RestoreV2 checkpoint_initializer_89/prefix&checkpoint_initializer_89/tensor_names*checkpoint_initializer_89/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_89Assign,bert/encoder/layer_3/attention/self/key/biascheckpoint_initializer_89*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias

 checkpoint_initializer_90/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ź
&checkpoint_initializer_90/tensor_namesConst"/device:CPU:0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_3/attention/self/key/kernel*
dtype0

*checkpoint_initializer_90/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_90	RestoreV2 checkpoint_initializer_90/prefix&checkpoint_initializer_90/tensor_names*checkpoint_initializer_90/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ő
	Assign_90Assign.bert/encoder/layer_3/attention/self/key/kernelcheckpoint_initializer_90*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

 checkpoint_initializer_91/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_91/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_3/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_91/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_91	RestoreV2 checkpoint_initializer_91/prefix&checkpoint_initializer_91/tensor_names*checkpoint_initializer_91/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
đ
	Assign_91Assign.bert/encoder/layer_3/attention/self/query/biascheckpoint_initializer_91*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 checkpoint_initializer_92/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ž
&checkpoint_initializer_92/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_3/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_92/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ţ
checkpoint_initializer_92	RestoreV2 checkpoint_initializer_92/prefix&checkpoint_initializer_92/tensor_names*checkpoint_initializer_92/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ů
	Assign_92Assign0bert/encoder/layer_3/attention/self/query/kernelcheckpoint_initializer_92*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel

 checkpoint_initializer_93/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ź
&checkpoint_initializer_93/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_3/attention/self/value/bias

*checkpoint_initializer_93/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_93	RestoreV2 checkpoint_initializer_93/prefix&checkpoint_initializer_93/tensor_names*checkpoint_initializer_93/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
đ
	Assign_93Assign.bert/encoder/layer_3/attention/self/value/biascheckpoint_initializer_93*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

 checkpoint_initializer_94/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ž
&checkpoint_initializer_94/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_3/attention/self/value/kernel

*checkpoint_initializer_94/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_94	RestoreV2 checkpoint_initializer_94/prefix&checkpoint_initializer_94/tensor_names*checkpoint_initializer_94/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ů
	Assign_94Assign0bert/encoder/layer_3/attention/self/value/kernelcheckpoint_initializer_94*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:


 checkpoint_initializer_95/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
&checkpoint_initializer_95/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_3/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_95/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_95	RestoreV2 checkpoint_initializer_95/prefix&checkpoint_initializer_95/tensor_names*checkpoint_initializer_95/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě
	Assign_95Assign,bert/encoder/layer_3/intermediate/dense/biascheckpoint_initializer_95*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_96/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ź
&checkpoint_initializer_96/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_3/intermediate/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_96/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ţ
checkpoint_initializer_96	RestoreV2 checkpoint_initializer_96/prefix&checkpoint_initializer_96/tensor_names*checkpoint_initializer_96/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ő
	Assign_96Assign.bert/encoder/layer_3/intermediate/dense/kernelcheckpoint_initializer_96* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
validate_shape(

 checkpoint_initializer_97/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¨
&checkpoint_initializer_97/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_3/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_97/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ů
checkpoint_initializer_97	RestoreV2 checkpoint_initializer_97/prefix&checkpoint_initializer_97/tensor_names*checkpoint_initializer_97/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
č
	Assign_97Assign*bert/encoder/layer_3/output/LayerNorm/betacheckpoint_initializer_97*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
validate_shape(

 checkpoint_initializer_98/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
&checkpoint_initializer_98/tensor_namesConst"/device:CPU:0*
_output_shapes
:*@
value7B5B+bert/encoder/layer_3/output/LayerNorm/gamma*
dtype0

*checkpoint_initializer_98/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ů
checkpoint_initializer_98	RestoreV2 checkpoint_initializer_98/prefix&checkpoint_initializer_98/tensor_names*checkpoint_initializer_98/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę
	Assign_98Assign+bert/encoder/layer_3/output/LayerNorm/gammacheckpoint_initializer_98*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

 checkpoint_initializer_99/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
¤
&checkpoint_initializer_99/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_3/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_99/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ů
checkpoint_initializer_99	RestoreV2 checkpoint_initializer_99/prefix&checkpoint_initializer_99/tensor_names*checkpoint_initializer_99/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ŕ
	Assign_99Assign&bert/encoder/layer_3/output/dense/biascheckpoint_initializer_99*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias

!checkpoint_initializer_100/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_100/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_3/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_100/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_100	RestoreV2!checkpoint_initializer_100/prefix'checkpoint_initializer_100/tensor_names+checkpoint_initializer_100/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ë

Assign_100Assign(bert/encoder/layer_3/output/dense/kernelcheckpoint_initializer_100*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_101/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ł
'checkpoint_initializer_101/tensor_namesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B4bert/encoder/layer_4/attention/output/LayerNorm/beta*
dtype0

+checkpoint_initializer_101/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_101	RestoreV2!checkpoint_initializer_101/prefix'checkpoint_initializer_101/tensor_names+checkpoint_initializer_101/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ

Assign_101Assign4bert/encoder/layer_4/attention/output/LayerNorm/betacheckpoint_initializer_101*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
validate_shape(

!checkpoint_initializer_102/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_102/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_4/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_102/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_102	RestoreV2!checkpoint_initializer_102/prefix'checkpoint_initializer_102/tensor_names+checkpoint_initializer_102/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2


Assign_102Assign5bert/encoder/layer_4/attention/output/LayerNorm/gammacheckpoint_initializer_102*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_103/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_103/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_4/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_103/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_103	RestoreV2!checkpoint_initializer_103/prefix'checkpoint_initializer_103/tensor_names+checkpoint_initializer_103/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ö

Assign_103Assign0bert/encoder/layer_4/attention/output/dense/biascheckpoint_initializer_103*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_104/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
'checkpoint_initializer_104/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_4/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_104/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_104	RestoreV2!checkpoint_initializer_104/prefix'checkpoint_initializer_104/tensor_names+checkpoint_initializer_104/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
˙

Assign_104Assign2bert/encoder/layer_4/attention/output/dense/kernelcheckpoint_initializer_104*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_105/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
'checkpoint_initializer_105/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_4/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_105/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_105	RestoreV2!checkpoint_initializer_105/prefix'checkpoint_initializer_105/tensor_names+checkpoint_initializer_105/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_105Assign,bert/encoder/layer_4/attention/self/key/biascheckpoint_initializer_105*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_106/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_106/tensor_namesConst"/device:CPU:0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_4/attention/self/key/kernel*
dtype0

+checkpoint_initializer_106/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_106	RestoreV2!checkpoint_initializer_106/prefix'checkpoint_initializer_106/tensor_names+checkpoint_initializer_106/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_106Assign.bert/encoder/layer_4/attention/self/key/kernelcheckpoint_initializer_106* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
validate_shape(

!checkpoint_initializer_107/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
­
'checkpoint_initializer_107/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_4/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_107/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_107	RestoreV2!checkpoint_initializer_107/prefix'checkpoint_initializer_107/tensor_names+checkpoint_initializer_107/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_107Assign.bert/encoder/layer_4/attention/self/query/biascheckpoint_initializer_107*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

!checkpoint_initializer_108/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_108/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_4/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_108/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_108	RestoreV2!checkpoint_initializer_108/prefix'checkpoint_initializer_108/tensor_names+checkpoint_initializer_108/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ű

Assign_108Assign0bert/encoder/layer_4/attention/self/query/kernelcheckpoint_initializer_108*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

!checkpoint_initializer_109/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_109/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_4/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_109/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_109	RestoreV2!checkpoint_initializer_109/prefix'checkpoint_initializer_109/tensor_names+checkpoint_initializer_109/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_109Assign.bert/encoder/layer_4/attention/self/value/biascheckpoint_initializer_109*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
validate_shape(

!checkpoint_initializer_110/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_110/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_4/attention/self/value/kernel

+checkpoint_initializer_110/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_110	RestoreV2!checkpoint_initializer_110/prefix'checkpoint_initializer_110/tensor_names+checkpoint_initializer_110/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_110Assign0bert/encoder/layer_4/attention/self/value/kernelcheckpoint_initializer_110*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_111/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ť
'checkpoint_initializer_111/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_4/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_111/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_111	RestoreV2!checkpoint_initializer_111/prefix'checkpoint_initializer_111/tensor_names+checkpoint_initializer_111/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_111Assign,bert/encoder/layer_4/intermediate/dense/biascheckpoint_initializer_111*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_112/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_112/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_112/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_112	RestoreV2!checkpoint_initializer_112/prefix'checkpoint_initializer_112/tensor_names+checkpoint_initializer_112/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_112Assign.bert/encoder/layer_4/intermediate/dense/kernelcheckpoint_initializer_112*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel

!checkpoint_initializer_113/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
'checkpoint_initializer_113/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_4/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_113/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_113	RestoreV2!checkpoint_initializer_113/prefix'checkpoint_initializer_113/tensor_names+checkpoint_initializer_113/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ę

Assign_113Assign*bert/encoder/layer_4/output/LayerNorm/betacheckpoint_initializer_113*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_114/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
'checkpoint_initializer_114/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_4/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_114/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_114	RestoreV2!checkpoint_initializer_114/prefix'checkpoint_initializer_114/tensor_names+checkpoint_initializer_114/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě

Assign_114Assign+bert/encoder/layer_4/output/LayerNorm/gammacheckpoint_initializer_114*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma

!checkpoint_initializer_115/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ľ
'checkpoint_initializer_115/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_4/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_115/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_115	RestoreV2!checkpoint_initializer_115/prefix'checkpoint_initializer_115/tensor_names+checkpoint_initializer_115/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
â

Assign_115Assign&bert/encoder/layer_4/output/dense/biascheckpoint_initializer_115*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_116/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_116/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_4/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_116/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_116	RestoreV2!checkpoint_initializer_116/prefix'checkpoint_initializer_116/tensor_names+checkpoint_initializer_116/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ë

Assign_116Assign(bert/encoder/layer_4/output/dense/kernelcheckpoint_initializer_116*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

!checkpoint_initializer_117/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ł
'checkpoint_initializer_117/tensor_namesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B4bert/encoder/layer_5/attention/output/LayerNorm/beta*
dtype0

+checkpoint_initializer_117/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_117	RestoreV2!checkpoint_initializer_117/prefix'checkpoint_initializer_117/tensor_names+checkpoint_initializer_117/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ

Assign_117Assign4bert/encoder/layer_5/attention/output/LayerNorm/betacheckpoint_initializer_117*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
validate_shape(

!checkpoint_initializer_118/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_118/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5bert/encoder/layer_5/attention/output/LayerNorm/gamma

+checkpoint_initializer_118/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_118	RestoreV2!checkpoint_initializer_118/prefix'checkpoint_initializer_118/tensor_names+checkpoint_initializer_118/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2


Assign_118Assign5bert/encoder/layer_5/attention/output/LayerNorm/gammacheckpoint_initializer_118*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_119/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_119/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_5/attention/output/dense/bias

+checkpoint_initializer_119/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_119	RestoreV2!checkpoint_initializer_119/prefix'checkpoint_initializer_119/tensor_names+checkpoint_initializer_119/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ö

Assign_119Assign0bert/encoder/layer_5/attention/output/dense/biascheckpoint_initializer_119*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias

!checkpoint_initializer_120/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
'checkpoint_initializer_120/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_5/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_120/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_120	RestoreV2!checkpoint_initializer_120/prefix'checkpoint_initializer_120/tensor_names+checkpoint_initializer_120/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
˙

Assign_120Assign2bert/encoder/layer_5/attention/output/dense/kernelcheckpoint_initializer_120*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_121/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ť
'checkpoint_initializer_121/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_5/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_121/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_121	RestoreV2!checkpoint_initializer_121/prefix'checkpoint_initializer_121/tensor_names+checkpoint_initializer_121/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
î

Assign_121Assign,bert/encoder/layer_5/attention/self/key/biascheckpoint_initializer_121*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_122/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_122/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_5/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_122/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_122	RestoreV2!checkpoint_initializer_122/prefix'checkpoint_initializer_122/tensor_names+checkpoint_initializer_122/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_122Assign.bert/encoder/layer_5/attention/self/key/kernelcheckpoint_initializer_122*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

!checkpoint_initializer_123/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_123/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_5/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_123/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_123	RestoreV2!checkpoint_initializer_123/prefix'checkpoint_initializer_123/tensor_names+checkpoint_initializer_123/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_123Assign.bert/encoder/layer_5/attention/self/query/biascheckpoint_initializer_123*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_124/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_124/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_5/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_124/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_124	RestoreV2!checkpoint_initializer_124/prefix'checkpoint_initializer_124/tensor_names+checkpoint_initializer_124/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_124Assign0bert/encoder/layer_5/attention/self/query/kernelcheckpoint_initializer_124*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

!checkpoint_initializer_125/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
­
'checkpoint_initializer_125/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_5/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_125/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_125	RestoreV2!checkpoint_initializer_125/prefix'checkpoint_initializer_125/tensor_names+checkpoint_initializer_125/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_125Assign.bert/encoder/layer_5/attention/self/value/biascheckpoint_initializer_125*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_126/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ż
'checkpoint_initializer_126/tensor_namesConst"/device:CPU:0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_5/attention/self/value/kernel*
dtype0

+checkpoint_initializer_126/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_126	RestoreV2!checkpoint_initializer_126/prefix'checkpoint_initializer_126/tensor_names+checkpoint_initializer_126/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_126Assign0bert/encoder/layer_5/attention/self/value/kernelcheckpoint_initializer_126*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_127/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
'checkpoint_initializer_127/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_5/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_127/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_127	RestoreV2!checkpoint_initializer_127/prefix'checkpoint_initializer_127/tensor_names+checkpoint_initializer_127/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
î

Assign_127Assign,bert/encoder/layer_5/intermediate/dense/biascheckpoint_initializer_127*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias

!checkpoint_initializer_128/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_128/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_5/intermediate/dense/kernel

+checkpoint_initializer_128/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_128	RestoreV2!checkpoint_initializer_128/prefix'checkpoint_initializer_128/tensor_names+checkpoint_initializer_128/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_128Assign.bert/encoder/layer_5/intermediate/dense/kernelcheckpoint_initializer_128* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
validate_shape(

!checkpoint_initializer_129/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
'checkpoint_initializer_129/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_5/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_129/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_129	RestoreV2!checkpoint_initializer_129/prefix'checkpoint_initializer_129/tensor_names+checkpoint_initializer_129/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ę

Assign_129Assign*bert/encoder/layer_5/output/LayerNorm/betacheckpoint_initializer_129*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_130/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
'checkpoint_initializer_130/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_5/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_130/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_130	RestoreV2!checkpoint_initializer_130/prefix'checkpoint_initializer_130/tensor_names+checkpoint_initializer_130/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ě

Assign_130Assign+bert/encoder/layer_5/output/LayerNorm/gammacheckpoint_initializer_130*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_131/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ľ
'checkpoint_initializer_131/tensor_namesConst"/device:CPU:0*
_output_shapes
:*;
value2B0B&bert/encoder/layer_5/output/dense/bias*
dtype0

+checkpoint_initializer_131/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_131	RestoreV2!checkpoint_initializer_131/prefix'checkpoint_initializer_131/tensor_names+checkpoint_initializer_131/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
â

Assign_131Assign&bert/encoder/layer_5/output/dense/biascheckpoint_initializer_131*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_132/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_132/tensor_namesConst"/device:CPU:0*
_output_shapes
:*=
value4B2B(bert/encoder/layer_5/output/dense/kernel*
dtype0

+checkpoint_initializer_132/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_132	RestoreV2!checkpoint_initializer_132/prefix'checkpoint_initializer_132/tensor_names+checkpoint_initializer_132/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ë

Assign_132Assign(bert/encoder/layer_5/output/dense/kernelcheckpoint_initializer_132*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_133/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
ł
'checkpoint_initializer_133/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_6/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_133/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_133	RestoreV2!checkpoint_initializer_133/prefix'checkpoint_initializer_133/tensor_names+checkpoint_initializer_133/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ţ

Assign_133Assign4bert/encoder/layer_6/attention/output/LayerNorm/betacheckpoint_initializer_133*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
validate_shape(

!checkpoint_initializer_134/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_134/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_6/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_134/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_134	RestoreV2!checkpoint_initializer_134/prefix'checkpoint_initializer_134/tensor_names+checkpoint_initializer_134/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2


Assign_134Assign5bert/encoder/layer_6/attention/output/LayerNorm/gammacheckpoint_initializer_134*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

!checkpoint_initializer_135/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_135/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_6/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_135/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_135	RestoreV2!checkpoint_initializer_135/prefix'checkpoint_initializer_135/tensor_names+checkpoint_initializer_135/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ö

Assign_135Assign0bert/encoder/layer_6/attention/output/dense/biascheckpoint_initializer_135*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

!checkpoint_initializer_136/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
'checkpoint_initializer_136/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_6/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_136/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_136	RestoreV2!checkpoint_initializer_136/prefix'checkpoint_initializer_136/tensor_names+checkpoint_initializer_136/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

˙

Assign_136Assign2bert/encoder/layer_6/attention/output/dense/kernelcheckpoint_initializer_136*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_137/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ť
'checkpoint_initializer_137/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_6/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_137/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_137	RestoreV2!checkpoint_initializer_137/prefix'checkpoint_initializer_137/tensor_names+checkpoint_initializer_137/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_137Assign,bert/encoder/layer_6/attention/self/key/biascheckpoint_initializer_137*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_138/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_138/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_6/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_138/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_138	RestoreV2!checkpoint_initializer_138/prefix'checkpoint_initializer_138/tensor_names+checkpoint_initializer_138/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_138Assign.bert/encoder/layer_6/attention/self/key/kernelcheckpoint_initializer_138*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_139/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_139/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_6/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_139/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_139	RestoreV2!checkpoint_initializer_139/prefix'checkpoint_initializer_139/tensor_names+checkpoint_initializer_139/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_139Assign.bert/encoder/layer_6/attention/self/query/biascheckpoint_initializer_139*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_140/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_140/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_6/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_140/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_140	RestoreV2!checkpoint_initializer_140/prefix'checkpoint_initializer_140/tensor_names+checkpoint_initializer_140/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_140Assign0bert/encoder/layer_6/attention/self/query/kernelcheckpoint_initializer_140*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_141/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_141/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_6/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_141/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_141	RestoreV2!checkpoint_initializer_141/prefix'checkpoint_initializer_141/tensor_names+checkpoint_initializer_141/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ň

Assign_141Assign.bert/encoder/layer_6/attention/self/value/biascheckpoint_initializer_141*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_142/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ż
'checkpoint_initializer_142/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_6/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_142/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_142	RestoreV2!checkpoint_initializer_142/prefix'checkpoint_initializer_142/tensor_names+checkpoint_initializer_142/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_142Assign0bert/encoder/layer_6/attention/self/value/kernelcheckpoint_initializer_142*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

!checkpoint_initializer_143/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
'checkpoint_initializer_143/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_6/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_143/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_143	RestoreV2!checkpoint_initializer_143/prefix'checkpoint_initializer_143/tensor_names+checkpoint_initializer_143/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_143Assign,bert/encoder/layer_6/intermediate/dense/biascheckpoint_initializer_143*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_144/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_144/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_6/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_144/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_144	RestoreV2!checkpoint_initializer_144/prefix'checkpoint_initializer_144/tensor_names+checkpoint_initializer_144/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_144Assign.bert/encoder/layer_6/intermediate/dense/kernelcheckpoint_initializer_144* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
validate_shape(

!checkpoint_initializer_145/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Š
'checkpoint_initializer_145/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value6B4B*bert/encoder/layer_6/output/LayerNorm/beta

+checkpoint_initializer_145/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_145	RestoreV2!checkpoint_initializer_145/prefix'checkpoint_initializer_145/tensor_names+checkpoint_initializer_145/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę

Assign_145Assign*bert/encoder/layer_6/output/LayerNorm/betacheckpoint_initializer_145*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
validate_shape(

!checkpoint_initializer_146/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
'checkpoint_initializer_146/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*@
value7B5B+bert/encoder/layer_6/output/LayerNorm/gamma

+checkpoint_initializer_146/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_146	RestoreV2!checkpoint_initializer_146/prefix'checkpoint_initializer_146/tensor_names+checkpoint_initializer_146/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě

Assign_146Assign+bert/encoder/layer_6/output/LayerNorm/gammacheckpoint_initializer_146*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_147/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ľ
'checkpoint_initializer_147/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_6/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_147/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_147	RestoreV2!checkpoint_initializer_147/prefix'checkpoint_initializer_147/tensor_names+checkpoint_initializer_147/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
â

Assign_147Assign&bert/encoder/layer_6/output/dense/biascheckpoint_initializer_147*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
validate_shape(

!checkpoint_initializer_148/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
§
'checkpoint_initializer_148/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_6/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_148/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_148	RestoreV2!checkpoint_initializer_148/prefix'checkpoint_initializer_148/tensor_names+checkpoint_initializer_148/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ë

Assign_148Assign(bert/encoder/layer_6/output/dense/kernelcheckpoint_initializer_148*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_149/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ł
'checkpoint_initializer_149/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_7/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_149/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_149	RestoreV2!checkpoint_initializer_149/prefix'checkpoint_initializer_149/tensor_names+checkpoint_initializer_149/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ

Assign_149Assign4bert/encoder/layer_7/attention/output/LayerNorm/betacheckpoint_initializer_149*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta

!checkpoint_initializer_150/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_150/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_7/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_150/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_150	RestoreV2!checkpoint_initializer_150/prefix'checkpoint_initializer_150/tensor_names+checkpoint_initializer_150/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2


Assign_150Assign5bert/encoder/layer_7/attention/output/LayerNorm/gammacheckpoint_initializer_150*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_151/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_151/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_7/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_151/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_151	RestoreV2!checkpoint_initializer_151/prefix'checkpoint_initializer_151/tensor_names+checkpoint_initializer_151/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ö

Assign_151Assign0bert/encoder/layer_7/attention/output/dense/biascheckpoint_initializer_151*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_152/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
'checkpoint_initializer_152/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_7/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_152/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_152	RestoreV2!checkpoint_initializer_152/prefix'checkpoint_initializer_152/tensor_names+checkpoint_initializer_152/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
˙

Assign_152Assign2bert/encoder/layer_7/attention/output/dense/kernelcheckpoint_initializer_152*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

!checkpoint_initializer_153/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ť
'checkpoint_initializer_153/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_7/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_153/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_153	RestoreV2!checkpoint_initializer_153/prefix'checkpoint_initializer_153/tensor_names+checkpoint_initializer_153/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
î

Assign_153Assign,bert/encoder/layer_7/attention/self/key/biascheckpoint_initializer_153*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias

!checkpoint_initializer_154/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
­
'checkpoint_initializer_154/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_7/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_154/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_154	RestoreV2!checkpoint_initializer_154/prefix'checkpoint_initializer_154/tensor_names+checkpoint_initializer_154/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_154Assign.bert/encoder/layer_7/attention/self/key/kernelcheckpoint_initializer_154*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel

!checkpoint_initializer_155/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
­
'checkpoint_initializer_155/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_7/attention/self/query/bias

+checkpoint_initializer_155/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_155	RestoreV2!checkpoint_initializer_155/prefix'checkpoint_initializer_155/tensor_names+checkpoint_initializer_155/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_155Assign.bert/encoder/layer_7/attention/self/query/biascheckpoint_initializer_155*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_156/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_156/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_7/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_156/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_156	RestoreV2!checkpoint_initializer_156/prefix'checkpoint_initializer_156/tensor_names+checkpoint_initializer_156/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ű

Assign_156Assign0bert/encoder/layer_7/attention/self/query/kernelcheckpoint_initializer_156*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

!checkpoint_initializer_157/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_157/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_7/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_157/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_157	RestoreV2!checkpoint_initializer_157/prefix'checkpoint_initializer_157/tensor_names+checkpoint_initializer_157/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ň

Assign_157Assign.bert/encoder/layer_7/attention/self/value/biascheckpoint_initializer_157*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_158/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_158/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_7/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_158/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_158	RestoreV2!checkpoint_initializer_158/prefix'checkpoint_initializer_158/tensor_names+checkpoint_initializer_158/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_158Assign0bert/encoder/layer_7/attention/self/value/kernelcheckpoint_initializer_158* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
validate_shape(

!checkpoint_initializer_159/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ť
'checkpoint_initializer_159/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_7/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_159/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_159	RestoreV2!checkpoint_initializer_159/prefix'checkpoint_initializer_159/tensor_names+checkpoint_initializer_159/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_159Assign,bert/encoder/layer_7/intermediate/dense/biascheckpoint_initializer_159*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_160/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_160/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_160/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_160	RestoreV2!checkpoint_initializer_160/prefix'checkpoint_initializer_160/tensor_names+checkpoint_initializer_160/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

÷

Assign_160Assign.bert/encoder/layer_7/intermediate/dense/kernelcheckpoint_initializer_160* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
validate_shape(

!checkpoint_initializer_161/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
'checkpoint_initializer_161/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_7/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_161/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_161	RestoreV2!checkpoint_initializer_161/prefix'checkpoint_initializer_161/tensor_names+checkpoint_initializer_161/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę

Assign_161Assign*bert/encoder/layer_7/output/LayerNorm/betacheckpoint_initializer_161*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta

!checkpoint_initializer_162/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
Ş
'checkpoint_initializer_162/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_7/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_162/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_162	RestoreV2!checkpoint_initializer_162/prefix'checkpoint_initializer_162/tensor_names+checkpoint_initializer_162/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
ě

Assign_162Assign+bert/encoder/layer_7/output/LayerNorm/gammacheckpoint_initializer_162*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_163/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ľ
'checkpoint_initializer_163/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_7/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_163/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_163	RestoreV2!checkpoint_initializer_163/prefix'checkpoint_initializer_163/tensor_names+checkpoint_initializer_163/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
â

Assign_163Assign&bert/encoder/layer_7/output/dense/biascheckpoint_initializer_163*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_164/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_164/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_7/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_164/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_164	RestoreV2!checkpoint_initializer_164/prefix'checkpoint_initializer_164/tensor_names+checkpoint_initializer_164/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ë

Assign_164Assign(bert/encoder/layer_7/output/dense/kernelcheckpoint_initializer_164*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_165/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ł
'checkpoint_initializer_165/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_8/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_165/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_165	RestoreV2!checkpoint_initializer_165/prefix'checkpoint_initializer_165/tensor_names+checkpoint_initializer_165/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ

Assign_165Assign4bert/encoder/layer_8/attention/output/LayerNorm/betacheckpoint_initializer_165*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_166/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_166/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_8/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_166/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_166	RestoreV2!checkpoint_initializer_166/prefix'checkpoint_initializer_166/tensor_names+checkpoint_initializer_166/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2


Assign_166Assign5bert/encoder/layer_8/attention/output/LayerNorm/gammacheckpoint_initializer_166*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_167/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_167/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_8/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_167/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_167	RestoreV2!checkpoint_initializer_167/prefix'checkpoint_initializer_167/tensor_names+checkpoint_initializer_167/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ö

Assign_167Assign0bert/encoder/layer_8/attention/output/dense/biascheckpoint_initializer_167*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
validate_shape(

!checkpoint_initializer_168/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
'checkpoint_initializer_168/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_8/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_168/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_168	RestoreV2!checkpoint_initializer_168/prefix'checkpoint_initializer_168/tensor_names+checkpoint_initializer_168/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
˙

Assign_168Assign2bert/encoder/layer_8/attention/output/dense/kernelcheckpoint_initializer_168*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel

!checkpoint_initializer_169/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ť
'checkpoint_initializer_169/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_8/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_169/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_169	RestoreV2!checkpoint_initializer_169/prefix'checkpoint_initializer_169/tensor_names+checkpoint_initializer_169/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
î

Assign_169Assign,bert/encoder/layer_8/attention/self/key/biascheckpoint_initializer_169*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_170/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_170/tensor_namesConst"/device:CPU:0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_8/attention/self/key/kernel*
dtype0

+checkpoint_initializer_170/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_170	RestoreV2!checkpoint_initializer_170/prefix'checkpoint_initializer_170/tensor_names+checkpoint_initializer_170/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_170Assign.bert/encoder/layer_8/attention/self/key/kernelcheckpoint_initializer_170*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

!checkpoint_initializer_171/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_171/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_8/attention/self/query/bias

+checkpoint_initializer_171/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_171	RestoreV2!checkpoint_initializer_171/prefix'checkpoint_initializer_171/tensor_names+checkpoint_initializer_171/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_171Assign.bert/encoder/layer_8/attention/self/query/biascheckpoint_initializer_171*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias

!checkpoint_initializer_172/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ż
'checkpoint_initializer_172/tensor_namesConst"/device:CPU:0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_8/attention/self/query/kernel*
dtype0

+checkpoint_initializer_172/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_172	RestoreV2!checkpoint_initializer_172/prefix'checkpoint_initializer_172/tensor_names+checkpoint_initializer_172/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_172Assign0bert/encoder/layer_8/attention/self/query/kernelcheckpoint_initializer_172*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

!checkpoint_initializer_173/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
­
'checkpoint_initializer_173/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_8/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_173/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ý
checkpoint_initializer_173	RestoreV2!checkpoint_initializer_173/prefix'checkpoint_initializer_173/tensor_names+checkpoint_initializer_173/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_173Assign.bert/encoder/layer_8/attention/self/value/biascheckpoint_initializer_173*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias

!checkpoint_initializer_174/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_174/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_8/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_174/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_174	RestoreV2!checkpoint_initializer_174/prefix'checkpoint_initializer_174/tensor_names+checkpoint_initializer_174/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

ű

Assign_174Assign0bert/encoder/layer_8/attention/self/value/kernelcheckpoint_initializer_174* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
validate_shape(

!checkpoint_initializer_175/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
'checkpoint_initializer_175/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_8/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_175/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_175	RestoreV2!checkpoint_initializer_175/prefix'checkpoint_initializer_175/tensor_names+checkpoint_initializer_175/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_175Assign,bert/encoder/layer_8/intermediate/dense/biascheckpoint_initializer_175*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias

!checkpoint_initializer_176/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_176/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_8/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_176/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_176	RestoreV2!checkpoint_initializer_176/prefix'checkpoint_initializer_176/tensor_names+checkpoint_initializer_176/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_176Assign.bert/encoder/layer_8/intermediate/dense/kernelcheckpoint_initializer_176* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
validate_shape(

!checkpoint_initializer_177/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
'checkpoint_initializer_177/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_8/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_177/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_177	RestoreV2!checkpoint_initializer_177/prefix'checkpoint_initializer_177/tensor_names+checkpoint_initializer_177/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę

Assign_177Assign*bert/encoder/layer_8/output/LayerNorm/betacheckpoint_initializer_177*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
validate_shape(

!checkpoint_initializer_178/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
'checkpoint_initializer_178/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_8/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_178/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_178	RestoreV2!checkpoint_initializer_178/prefix'checkpoint_initializer_178/tensor_names+checkpoint_initializer_178/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě

Assign_178Assign+bert/encoder/layer_8/output/LayerNorm/gammacheckpoint_initializer_178*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma

!checkpoint_initializer_179/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ľ
'checkpoint_initializer_179/tensor_namesConst"/device:CPU:0*
_output_shapes
:*;
value2B0B&bert/encoder/layer_8/output/dense/bias*
dtype0

+checkpoint_initializer_179/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_179	RestoreV2!checkpoint_initializer_179/prefix'checkpoint_initializer_179/tensor_names+checkpoint_initializer_179/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
â

Assign_179Assign&bert/encoder/layer_8/output/dense/biascheckpoint_initializer_179*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
validate_shape(

!checkpoint_initializer_180/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_180/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_8/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_180/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_180	RestoreV2!checkpoint_initializer_180/prefix'checkpoint_initializer_180/tensor_names+checkpoint_initializer_180/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ë

Assign_180Assign(bert/encoder/layer_8/output/dense/kernelcheckpoint_initializer_180*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel

!checkpoint_initializer_181/prefixConst"/device:CPU:0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0
ł
'checkpoint_initializer_181/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_9/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_181/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_181	RestoreV2!checkpoint_initializer_181/prefix'checkpoint_initializer_181/tensor_names+checkpoint_initializer_181/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ţ

Assign_181Assign4bert/encoder/layer_9/attention/output/LayerNorm/betacheckpoint_initializer_181*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_182/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
´
'checkpoint_initializer_182/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_9/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_182/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_182	RestoreV2!checkpoint_initializer_182/prefix'checkpoint_initializer_182/tensor_names+checkpoint_initializer_182/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:


Assign_182Assign5bert/encoder/layer_9/attention/output/LayerNorm/gammacheckpoint_initializer_182*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_183/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
Ż
'checkpoint_initializer_183/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_9/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_183/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_183	RestoreV2!checkpoint_initializer_183/prefix'checkpoint_initializer_183/tensor_names+checkpoint_initializer_183/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ö

Assign_183Assign0bert/encoder/layer_9/attention/output/dense/biascheckpoint_initializer_183*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

!checkpoint_initializer_184/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ą
'checkpoint_initializer_184/tensor_namesConst"/device:CPU:0*
_output_shapes
:*G
value>B<B2bert/encoder/layer_9/attention/output/dense/kernel*
dtype0

+checkpoint_initializer_184/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_184	RestoreV2!checkpoint_initializer_184/prefix'checkpoint_initializer_184/tensor_names+checkpoint_initializer_184/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

˙

Assign_184Assign2bert/encoder/layer_9/attention/output/dense/kernelcheckpoint_initializer_184*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_185/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
'checkpoint_initializer_185/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_9/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_185/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_185	RestoreV2!checkpoint_initializer_185/prefix'checkpoint_initializer_185/tensor_names+checkpoint_initializer_185/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_185Assign,bert/encoder/layer_9/attention/self/key/biascheckpoint_initializer_185*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_186/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_186/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_186/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_186	RestoreV2!checkpoint_initializer_186/prefix'checkpoint_initializer_186/tensor_names+checkpoint_initializer_186/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
÷

Assign_186Assign.bert/encoder/layer_9/attention/self/key/kernelcheckpoint_initializer_186*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_187/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_187/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_187/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_187	RestoreV2!checkpoint_initializer_187/prefix'checkpoint_initializer_187/tensor_names+checkpoint_initializer_187/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_187Assign.bert/encoder/layer_9/attention/self/query/biascheckpoint_initializer_187*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_188/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_188/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_9/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_188/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_188	RestoreV2!checkpoint_initializer_188/prefix'checkpoint_initializer_188/tensor_names+checkpoint_initializer_188/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_188Assign0bert/encoder/layer_9/attention/self/query/kernelcheckpoint_initializer_188*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_189/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_189/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_189/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_189	RestoreV2!checkpoint_initializer_189/prefix'checkpoint_initializer_189/tensor_names+checkpoint_initializer_189/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ň

Assign_189Assign.bert/encoder/layer_9/attention/self/value/biascheckpoint_initializer_189*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_190/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ż
'checkpoint_initializer_190/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_9/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_190/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_190	RestoreV2!checkpoint_initializer_190/prefix'checkpoint_initializer_190/tensor_names+checkpoint_initializer_190/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ű

Assign_190Assign0bert/encoder/layer_9/attention/self/value/kernelcheckpoint_initializer_190*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:


!checkpoint_initializer_191/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ť
'checkpoint_initializer_191/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_9/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_191/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_191	RestoreV2!checkpoint_initializer_191/prefix'checkpoint_initializer_191/tensor_names+checkpoint_initializer_191/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
î

Assign_191Assign,bert/encoder/layer_9/intermediate/dense/biascheckpoint_initializer_191*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

!checkpoint_initializer_192/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_192/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_192/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_192	RestoreV2!checkpoint_initializer_192/prefix'checkpoint_initializer_192/tensor_names+checkpoint_initializer_192/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

÷

Assign_192Assign.bert/encoder/layer_9/intermediate/dense/kernelcheckpoint_initializer_192*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

!checkpoint_initializer_193/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Š
'checkpoint_initializer_193/tensor_namesConst"/device:CPU:0*
_output_shapes
:*?
value6B4B*bert/encoder/layer_9/output/LayerNorm/beta*
dtype0

+checkpoint_initializer_193/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_193	RestoreV2!checkpoint_initializer_193/prefix'checkpoint_initializer_193/tensor_names+checkpoint_initializer_193/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ę

Assign_193Assign*bert/encoder/layer_9/output/LayerNorm/betacheckpoint_initializer_193*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_194/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ş
'checkpoint_initializer_194/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_9/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_194/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_194	RestoreV2!checkpoint_initializer_194/prefix'checkpoint_initializer_194/tensor_names+checkpoint_initializer_194/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
ě

Assign_194Assign+bert/encoder/layer_9/output/LayerNorm/gammacheckpoint_initializer_194*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_195/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
Ľ
'checkpoint_initializer_195/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_9/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_195/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_195	RestoreV2!checkpoint_initializer_195/prefix'checkpoint_initializer_195/tensor_names+checkpoint_initializer_195/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
â

Assign_195Assign&bert/encoder/layer_9/output/dense/biascheckpoint_initializer_195*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
validate_shape(*
_output_shapes	
:

!checkpoint_initializer_196/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt
§
'checkpoint_initializer_196/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_9/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_196/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_196	RestoreV2!checkpoint_initializer_196/prefix'checkpoint_initializer_196/tensor_names+checkpoint_initializer_196/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
ë

Assign_196Assign(bert/encoder/layer_9/output/dense/kernelcheckpoint_initializer_196*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel

!checkpoint_initializer_197/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 

'checkpoint_initializer_197/tensor_namesConst"/device:CPU:0*+
value"B Bbert/pooler/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_197/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_197	RestoreV2!checkpoint_initializer_197/prefix'checkpoint_initializer_197/tensor_names+checkpoint_initializer_197/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Â

Assign_197Assignbert/pooler/dense/biascheckpoint_initializer_197*
T0*)
_class
loc:@bert/pooler/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

!checkpoint_initializer_198/prefixConst"/device:CPU:0*8
value/B- B'chinese_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 

'checkpoint_initializer_198/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*-
value$B"Bbert/pooler/dense/kernel

+checkpoint_initializer_198/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_198	RestoreV2!checkpoint_initializer_198/prefix'checkpoint_initializer_198/tensor_names+checkpoint_initializer_198/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ë

Assign_198Assignbert/pooler/dense/kernelcheckpoint_initializer_198*
use_locking(*
T0*+
_class!
loc:@bert/pooler/dense/kernel*
validate_shape(* 
_output_shapes
:


initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_a218fc14d8a14b40a5c6cdd78ec5c21c/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
K
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes	
:Ę*¨J
valueJBJĘBbert/embeddings/LayerNorm/betaBbert/embeddings/LayerNorm/gammaB#bert/embeddings/position_embeddingsB%bert/embeddings/token_type_embeddingsBbert/embeddings/word_embeddingsB4bert/encoder/layer_0/attention/output/LayerNorm/betaB5bert/encoder/layer_0/attention/output/LayerNorm/gammaB0bert/encoder/layer_0/attention/output/dense/biasB2bert/encoder/layer_0/attention/output/dense/kernelB,bert/encoder/layer_0/attention/self/key/biasB.bert/encoder/layer_0/attention/self/key/kernelB.bert/encoder/layer_0/attention/self/query/biasB0bert/encoder/layer_0/attention/self/query/kernelB.bert/encoder/layer_0/attention/self/value/biasB0bert/encoder/layer_0/attention/self/value/kernelB,bert/encoder/layer_0/intermediate/dense/biasB.bert/encoder/layer_0/intermediate/dense/kernelB*bert/encoder/layer_0/output/LayerNorm/betaB+bert/encoder/layer_0/output/LayerNorm/gammaB&bert/encoder/layer_0/output/dense/biasB(bert/encoder/layer_0/output/dense/kernelB4bert/encoder/layer_1/attention/output/LayerNorm/betaB5bert/encoder/layer_1/attention/output/LayerNorm/gammaB0bert/encoder/layer_1/attention/output/dense/biasB2bert/encoder/layer_1/attention/output/dense/kernelB,bert/encoder/layer_1/attention/self/key/biasB.bert/encoder/layer_1/attention/self/key/kernelB.bert/encoder/layer_1/attention/self/query/biasB0bert/encoder/layer_1/attention/self/query/kernelB.bert/encoder/layer_1/attention/self/value/biasB0bert/encoder/layer_1/attention/self/value/kernelB,bert/encoder/layer_1/intermediate/dense/biasB.bert/encoder/layer_1/intermediate/dense/kernelB*bert/encoder/layer_1/output/LayerNorm/betaB+bert/encoder/layer_1/output/LayerNorm/gammaB&bert/encoder/layer_1/output/dense/biasB(bert/encoder/layer_1/output/dense/kernelB5bert/encoder/layer_10/attention/output/LayerNorm/betaB6bert/encoder/layer_10/attention/output/LayerNorm/gammaB1bert/encoder/layer_10/attention/output/dense/biasB3bert/encoder/layer_10/attention/output/dense/kernelB-bert/encoder/layer_10/attention/self/key/biasB/bert/encoder/layer_10/attention/self/key/kernelB/bert/encoder/layer_10/attention/self/query/biasB1bert/encoder/layer_10/attention/self/query/kernelB/bert/encoder/layer_10/attention/self/value/biasB1bert/encoder/layer_10/attention/self/value/kernelB-bert/encoder/layer_10/intermediate/dense/biasB/bert/encoder/layer_10/intermediate/dense/kernelB+bert/encoder/layer_10/output/LayerNorm/betaB,bert/encoder/layer_10/output/LayerNorm/gammaB'bert/encoder/layer_10/output/dense/biasB)bert/encoder/layer_10/output/dense/kernelB5bert/encoder/layer_11/attention/output/LayerNorm/betaB6bert/encoder/layer_11/attention/output/LayerNorm/gammaB1bert/encoder/layer_11/attention/output/dense/biasB3bert/encoder/layer_11/attention/output/dense/kernelB-bert/encoder/layer_11/attention/self/key/biasB/bert/encoder/layer_11/attention/self/key/kernelB/bert/encoder/layer_11/attention/self/query/biasB1bert/encoder/layer_11/attention/self/query/kernelB/bert/encoder/layer_11/attention/self/value/biasB1bert/encoder/layer_11/attention/self/value/kernelB-bert/encoder/layer_11/intermediate/dense/biasB/bert/encoder/layer_11/intermediate/dense/kernelB+bert/encoder/layer_11/output/LayerNorm/betaB,bert/encoder/layer_11/output/LayerNorm/gammaB'bert/encoder/layer_11/output/dense/biasB)bert/encoder/layer_11/output/dense/kernelB4bert/encoder/layer_2/attention/output/LayerNorm/betaB5bert/encoder/layer_2/attention/output/LayerNorm/gammaB0bert/encoder/layer_2/attention/output/dense/biasB2bert/encoder/layer_2/attention/output/dense/kernelB,bert/encoder/layer_2/attention/self/key/biasB.bert/encoder/layer_2/attention/self/key/kernelB.bert/encoder/layer_2/attention/self/query/biasB0bert/encoder/layer_2/attention/self/query/kernelB.bert/encoder/layer_2/attention/self/value/biasB0bert/encoder/layer_2/attention/self/value/kernelB,bert/encoder/layer_2/intermediate/dense/biasB.bert/encoder/layer_2/intermediate/dense/kernelB*bert/encoder/layer_2/output/LayerNorm/betaB+bert/encoder/layer_2/output/LayerNorm/gammaB&bert/encoder/layer_2/output/dense/biasB(bert/encoder/layer_2/output/dense/kernelB4bert/encoder/layer_3/attention/output/LayerNorm/betaB5bert/encoder/layer_3/attention/output/LayerNorm/gammaB0bert/encoder/layer_3/attention/output/dense/biasB2bert/encoder/layer_3/attention/output/dense/kernelB,bert/encoder/layer_3/attention/self/key/biasB.bert/encoder/layer_3/attention/self/key/kernelB.bert/encoder/layer_3/attention/self/query/biasB0bert/encoder/layer_3/attention/self/query/kernelB.bert/encoder/layer_3/attention/self/value/biasB0bert/encoder/layer_3/attention/self/value/kernelB,bert/encoder/layer_3/intermediate/dense/biasB.bert/encoder/layer_3/intermediate/dense/kernelB*bert/encoder/layer_3/output/LayerNorm/betaB+bert/encoder/layer_3/output/LayerNorm/gammaB&bert/encoder/layer_3/output/dense/biasB(bert/encoder/layer_3/output/dense/kernelB4bert/encoder/layer_4/attention/output/LayerNorm/betaB5bert/encoder/layer_4/attention/output/LayerNorm/gammaB0bert/encoder/layer_4/attention/output/dense/biasB2bert/encoder/layer_4/attention/output/dense/kernelB,bert/encoder/layer_4/attention/self/key/biasB.bert/encoder/layer_4/attention/self/key/kernelB.bert/encoder/layer_4/attention/self/query/biasB0bert/encoder/layer_4/attention/self/query/kernelB.bert/encoder/layer_4/attention/self/value/biasB0bert/encoder/layer_4/attention/self/value/kernelB,bert/encoder/layer_4/intermediate/dense/biasB.bert/encoder/layer_4/intermediate/dense/kernelB*bert/encoder/layer_4/output/LayerNorm/betaB+bert/encoder/layer_4/output/LayerNorm/gammaB&bert/encoder/layer_4/output/dense/biasB(bert/encoder/layer_4/output/dense/kernelB4bert/encoder/layer_5/attention/output/LayerNorm/betaB5bert/encoder/layer_5/attention/output/LayerNorm/gammaB0bert/encoder/layer_5/attention/output/dense/biasB2bert/encoder/layer_5/attention/output/dense/kernelB,bert/encoder/layer_5/attention/self/key/biasB.bert/encoder/layer_5/attention/self/key/kernelB.bert/encoder/layer_5/attention/self/query/biasB0bert/encoder/layer_5/attention/self/query/kernelB.bert/encoder/layer_5/attention/self/value/biasB0bert/encoder/layer_5/attention/self/value/kernelB,bert/encoder/layer_5/intermediate/dense/biasB.bert/encoder/layer_5/intermediate/dense/kernelB*bert/encoder/layer_5/output/LayerNorm/betaB+bert/encoder/layer_5/output/LayerNorm/gammaB&bert/encoder/layer_5/output/dense/biasB(bert/encoder/layer_5/output/dense/kernelB4bert/encoder/layer_6/attention/output/LayerNorm/betaB5bert/encoder/layer_6/attention/output/LayerNorm/gammaB0bert/encoder/layer_6/attention/output/dense/biasB2bert/encoder/layer_6/attention/output/dense/kernelB,bert/encoder/layer_6/attention/self/key/biasB.bert/encoder/layer_6/attention/self/key/kernelB.bert/encoder/layer_6/attention/self/query/biasB0bert/encoder/layer_6/attention/self/query/kernelB.bert/encoder/layer_6/attention/self/value/biasB0bert/encoder/layer_6/attention/self/value/kernelB,bert/encoder/layer_6/intermediate/dense/biasB.bert/encoder/layer_6/intermediate/dense/kernelB*bert/encoder/layer_6/output/LayerNorm/betaB+bert/encoder/layer_6/output/LayerNorm/gammaB&bert/encoder/layer_6/output/dense/biasB(bert/encoder/layer_6/output/dense/kernelB4bert/encoder/layer_7/attention/output/LayerNorm/betaB5bert/encoder/layer_7/attention/output/LayerNorm/gammaB0bert/encoder/layer_7/attention/output/dense/biasB2bert/encoder/layer_7/attention/output/dense/kernelB,bert/encoder/layer_7/attention/self/key/biasB.bert/encoder/layer_7/attention/self/key/kernelB.bert/encoder/layer_7/attention/self/query/biasB0bert/encoder/layer_7/attention/self/query/kernelB.bert/encoder/layer_7/attention/self/value/biasB0bert/encoder/layer_7/attention/self/value/kernelB,bert/encoder/layer_7/intermediate/dense/biasB.bert/encoder/layer_7/intermediate/dense/kernelB*bert/encoder/layer_7/output/LayerNorm/betaB+bert/encoder/layer_7/output/LayerNorm/gammaB&bert/encoder/layer_7/output/dense/biasB(bert/encoder/layer_7/output/dense/kernelB4bert/encoder/layer_8/attention/output/LayerNorm/betaB5bert/encoder/layer_8/attention/output/LayerNorm/gammaB0bert/encoder/layer_8/attention/output/dense/biasB2bert/encoder/layer_8/attention/output/dense/kernelB,bert/encoder/layer_8/attention/self/key/biasB.bert/encoder/layer_8/attention/self/key/kernelB.bert/encoder/layer_8/attention/self/query/biasB0bert/encoder/layer_8/attention/self/query/kernelB.bert/encoder/layer_8/attention/self/value/biasB0bert/encoder/layer_8/attention/self/value/kernelB,bert/encoder/layer_8/intermediate/dense/biasB.bert/encoder/layer_8/intermediate/dense/kernelB*bert/encoder/layer_8/output/LayerNorm/betaB+bert/encoder/layer_8/output/LayerNorm/gammaB&bert/encoder/layer_8/output/dense/biasB(bert/encoder/layer_8/output/dense/kernelB4bert/encoder/layer_9/attention/output/LayerNorm/betaB5bert/encoder/layer_9/attention/output/LayerNorm/gammaB0bert/encoder/layer_9/attention/output/dense/biasB2bert/encoder/layer_9/attention/output/dense/kernelB,bert/encoder/layer_9/attention/self/key/biasB.bert/encoder/layer_9/attention/self/key/kernelB.bert/encoder/layer_9/attention/self/query/biasB0bert/encoder/layer_9/attention/self/query/kernelB.bert/encoder/layer_9/attention/self/value/biasB0bert/encoder/layer_9/attention/self/value/kernelB,bert/encoder/layer_9/intermediate/dense/biasB.bert/encoder/layer_9/intermediate/dense/kernelB*bert/encoder/layer_9/output/LayerNorm/betaB+bert/encoder/layer_9/output/LayerNorm/gammaB&bert/encoder/layer_9/output/dense/biasB(bert/encoder/layer_9/output/dense/kernelBbert/pooler/dense/biasBbert/pooler/dense/kernelBglobal_stepBoutput_biasBoutput_weights

save/SaveV2/shape_and_slicesConst"/device:CPU:0*Ş
value BĘB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:Ę
öL
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbert/embeddings/LayerNorm/betabert/embeddings/LayerNorm/gamma#bert/embeddings/position_embeddings%bert/embeddings/token_type_embeddingsbert/embeddings/word_embeddings4bert/encoder/layer_0/attention/output/LayerNorm/beta5bert/encoder/layer_0/attention/output/LayerNorm/gamma0bert/encoder/layer_0/attention/output/dense/bias2bert/encoder/layer_0/attention/output/dense/kernel,bert/encoder/layer_0/attention/self/key/bias.bert/encoder/layer_0/attention/self/key/kernel.bert/encoder/layer_0/attention/self/query/bias0bert/encoder/layer_0/attention/self/query/kernel.bert/encoder/layer_0/attention/self/value/bias0bert/encoder/layer_0/attention/self/value/kernel,bert/encoder/layer_0/intermediate/dense/bias.bert/encoder/layer_0/intermediate/dense/kernel*bert/encoder/layer_0/output/LayerNorm/beta+bert/encoder/layer_0/output/LayerNorm/gamma&bert/encoder/layer_0/output/dense/bias(bert/encoder/layer_0/output/dense/kernel4bert/encoder/layer_1/attention/output/LayerNorm/beta5bert/encoder/layer_1/attention/output/LayerNorm/gamma0bert/encoder/layer_1/attention/output/dense/bias2bert/encoder/layer_1/attention/output/dense/kernel,bert/encoder/layer_1/attention/self/key/bias.bert/encoder/layer_1/attention/self/key/kernel.bert/encoder/layer_1/attention/self/query/bias0bert/encoder/layer_1/attention/self/query/kernel.bert/encoder/layer_1/attention/self/value/bias0bert/encoder/layer_1/attention/self/value/kernel,bert/encoder/layer_1/intermediate/dense/bias.bert/encoder/layer_1/intermediate/dense/kernel*bert/encoder/layer_1/output/LayerNorm/beta+bert/encoder/layer_1/output/LayerNorm/gamma&bert/encoder/layer_1/output/dense/bias(bert/encoder/layer_1/output/dense/kernel5bert/encoder/layer_10/attention/output/LayerNorm/beta6bert/encoder/layer_10/attention/output/LayerNorm/gamma1bert/encoder/layer_10/attention/output/dense/bias3bert/encoder/layer_10/attention/output/dense/kernel-bert/encoder/layer_10/attention/self/key/bias/bert/encoder/layer_10/attention/self/key/kernel/bert/encoder/layer_10/attention/self/query/bias1bert/encoder/layer_10/attention/self/query/kernel/bert/encoder/layer_10/attention/self/value/bias1bert/encoder/layer_10/attention/self/value/kernel-bert/encoder/layer_10/intermediate/dense/bias/bert/encoder/layer_10/intermediate/dense/kernel+bert/encoder/layer_10/output/LayerNorm/beta,bert/encoder/layer_10/output/LayerNorm/gamma'bert/encoder/layer_10/output/dense/bias)bert/encoder/layer_10/output/dense/kernel5bert/encoder/layer_11/attention/output/LayerNorm/beta6bert/encoder/layer_11/attention/output/LayerNorm/gamma1bert/encoder/layer_11/attention/output/dense/bias3bert/encoder/layer_11/attention/output/dense/kernel-bert/encoder/layer_11/attention/self/key/bias/bert/encoder/layer_11/attention/self/key/kernel/bert/encoder/layer_11/attention/self/query/bias1bert/encoder/layer_11/attention/self/query/kernel/bert/encoder/layer_11/attention/self/value/bias1bert/encoder/layer_11/attention/self/value/kernel-bert/encoder/layer_11/intermediate/dense/bias/bert/encoder/layer_11/intermediate/dense/kernel+bert/encoder/layer_11/output/LayerNorm/beta,bert/encoder/layer_11/output/LayerNorm/gamma'bert/encoder/layer_11/output/dense/bias)bert/encoder/layer_11/output/dense/kernel4bert/encoder/layer_2/attention/output/LayerNorm/beta5bert/encoder/layer_2/attention/output/LayerNorm/gamma0bert/encoder/layer_2/attention/output/dense/bias2bert/encoder/layer_2/attention/output/dense/kernel,bert/encoder/layer_2/attention/self/key/bias.bert/encoder/layer_2/attention/self/key/kernel.bert/encoder/layer_2/attention/self/query/bias0bert/encoder/layer_2/attention/self/query/kernel.bert/encoder/layer_2/attention/self/value/bias0bert/encoder/layer_2/attention/self/value/kernel,bert/encoder/layer_2/intermediate/dense/bias.bert/encoder/layer_2/intermediate/dense/kernel*bert/encoder/layer_2/output/LayerNorm/beta+bert/encoder/layer_2/output/LayerNorm/gamma&bert/encoder/layer_2/output/dense/bias(bert/encoder/layer_2/output/dense/kernel4bert/encoder/layer_3/attention/output/LayerNorm/beta5bert/encoder/layer_3/attention/output/LayerNorm/gamma0bert/encoder/layer_3/attention/output/dense/bias2bert/encoder/layer_3/attention/output/dense/kernel,bert/encoder/layer_3/attention/self/key/bias.bert/encoder/layer_3/attention/self/key/kernel.bert/encoder/layer_3/attention/self/query/bias0bert/encoder/layer_3/attention/self/query/kernel.bert/encoder/layer_3/attention/self/value/bias0bert/encoder/layer_3/attention/self/value/kernel,bert/encoder/layer_3/intermediate/dense/bias.bert/encoder/layer_3/intermediate/dense/kernel*bert/encoder/layer_3/output/LayerNorm/beta+bert/encoder/layer_3/output/LayerNorm/gamma&bert/encoder/layer_3/output/dense/bias(bert/encoder/layer_3/output/dense/kernel4bert/encoder/layer_4/attention/output/LayerNorm/beta5bert/encoder/layer_4/attention/output/LayerNorm/gamma0bert/encoder/layer_4/attention/output/dense/bias2bert/encoder/layer_4/attention/output/dense/kernel,bert/encoder/layer_4/attention/self/key/bias.bert/encoder/layer_4/attention/self/key/kernel.bert/encoder/layer_4/attention/self/query/bias0bert/encoder/layer_4/attention/self/query/kernel.bert/encoder/layer_4/attention/self/value/bias0bert/encoder/layer_4/attention/self/value/kernel,bert/encoder/layer_4/intermediate/dense/bias.bert/encoder/layer_4/intermediate/dense/kernel*bert/encoder/layer_4/output/LayerNorm/beta+bert/encoder/layer_4/output/LayerNorm/gamma&bert/encoder/layer_4/output/dense/bias(bert/encoder/layer_4/output/dense/kernel4bert/encoder/layer_5/attention/output/LayerNorm/beta5bert/encoder/layer_5/attention/output/LayerNorm/gamma0bert/encoder/layer_5/attention/output/dense/bias2bert/encoder/layer_5/attention/output/dense/kernel,bert/encoder/layer_5/attention/self/key/bias.bert/encoder/layer_5/attention/self/key/kernel.bert/encoder/layer_5/attention/self/query/bias0bert/encoder/layer_5/attention/self/query/kernel.bert/encoder/layer_5/attention/self/value/bias0bert/encoder/layer_5/attention/self/value/kernel,bert/encoder/layer_5/intermediate/dense/bias.bert/encoder/layer_5/intermediate/dense/kernel*bert/encoder/layer_5/output/LayerNorm/beta+bert/encoder/layer_5/output/LayerNorm/gamma&bert/encoder/layer_5/output/dense/bias(bert/encoder/layer_5/output/dense/kernel4bert/encoder/layer_6/attention/output/LayerNorm/beta5bert/encoder/layer_6/attention/output/LayerNorm/gamma0bert/encoder/layer_6/attention/output/dense/bias2bert/encoder/layer_6/attention/output/dense/kernel,bert/encoder/layer_6/attention/self/key/bias.bert/encoder/layer_6/attention/self/key/kernel.bert/encoder/layer_6/attention/self/query/bias0bert/encoder/layer_6/attention/self/query/kernel.bert/encoder/layer_6/attention/self/value/bias0bert/encoder/layer_6/attention/self/value/kernel,bert/encoder/layer_6/intermediate/dense/bias.bert/encoder/layer_6/intermediate/dense/kernel*bert/encoder/layer_6/output/LayerNorm/beta+bert/encoder/layer_6/output/LayerNorm/gamma&bert/encoder/layer_6/output/dense/bias(bert/encoder/layer_6/output/dense/kernel4bert/encoder/layer_7/attention/output/LayerNorm/beta5bert/encoder/layer_7/attention/output/LayerNorm/gamma0bert/encoder/layer_7/attention/output/dense/bias2bert/encoder/layer_7/attention/output/dense/kernel,bert/encoder/layer_7/attention/self/key/bias.bert/encoder/layer_7/attention/self/key/kernel.bert/encoder/layer_7/attention/self/query/bias0bert/encoder/layer_7/attention/self/query/kernel.bert/encoder/layer_7/attention/self/value/bias0bert/encoder/layer_7/attention/self/value/kernel,bert/encoder/layer_7/intermediate/dense/bias.bert/encoder/layer_7/intermediate/dense/kernel*bert/encoder/layer_7/output/LayerNorm/beta+bert/encoder/layer_7/output/LayerNorm/gamma&bert/encoder/layer_7/output/dense/bias(bert/encoder/layer_7/output/dense/kernel4bert/encoder/layer_8/attention/output/LayerNorm/beta5bert/encoder/layer_8/attention/output/LayerNorm/gamma0bert/encoder/layer_8/attention/output/dense/bias2bert/encoder/layer_8/attention/output/dense/kernel,bert/encoder/layer_8/attention/self/key/bias.bert/encoder/layer_8/attention/self/key/kernel.bert/encoder/layer_8/attention/self/query/bias0bert/encoder/layer_8/attention/self/query/kernel.bert/encoder/layer_8/attention/self/value/bias0bert/encoder/layer_8/attention/self/value/kernel,bert/encoder/layer_8/intermediate/dense/bias.bert/encoder/layer_8/intermediate/dense/kernel*bert/encoder/layer_8/output/LayerNorm/beta+bert/encoder/layer_8/output/LayerNorm/gamma&bert/encoder/layer_8/output/dense/bias(bert/encoder/layer_8/output/dense/kernel4bert/encoder/layer_9/attention/output/LayerNorm/beta5bert/encoder/layer_9/attention/output/LayerNorm/gamma0bert/encoder/layer_9/attention/output/dense/bias2bert/encoder/layer_9/attention/output/dense/kernel,bert/encoder/layer_9/attention/self/key/bias.bert/encoder/layer_9/attention/self/key/kernel.bert/encoder/layer_9/attention/self/query/bias0bert/encoder/layer_9/attention/self/query/kernel.bert/encoder/layer_9/attention/self/value/bias0bert/encoder/layer_9/attention/self/value/kernel,bert/encoder/layer_9/intermediate/dense/bias.bert/encoder/layer_9/intermediate/dense/kernel*bert/encoder/layer_9/output/LayerNorm/beta+bert/encoder/layer_9/output/LayerNorm/gamma&bert/encoder/layer_9/output/dense/bias(bert/encoder/layer_9/output/dense/kernelbert/pooler/dense/biasbert/pooler/dense/kernelglobal_step/Read/ReadVariableOpoutput_biasoutput_weights"/device:CPU:0*Ű
dtypesĐ
Í2Ę	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
K
save/RestoreV2/tensor_namesConst"/device:CPU:0*¨J
valueJBJĘBbert/embeddings/LayerNorm/betaBbert/embeddings/LayerNorm/gammaB#bert/embeddings/position_embeddingsB%bert/embeddings/token_type_embeddingsBbert/embeddings/word_embeddingsB4bert/encoder/layer_0/attention/output/LayerNorm/betaB5bert/encoder/layer_0/attention/output/LayerNorm/gammaB0bert/encoder/layer_0/attention/output/dense/biasB2bert/encoder/layer_0/attention/output/dense/kernelB,bert/encoder/layer_0/attention/self/key/biasB.bert/encoder/layer_0/attention/self/key/kernelB.bert/encoder/layer_0/attention/self/query/biasB0bert/encoder/layer_0/attention/self/query/kernelB.bert/encoder/layer_0/attention/self/value/biasB0bert/encoder/layer_0/attention/self/value/kernelB,bert/encoder/layer_0/intermediate/dense/biasB.bert/encoder/layer_0/intermediate/dense/kernelB*bert/encoder/layer_0/output/LayerNorm/betaB+bert/encoder/layer_0/output/LayerNorm/gammaB&bert/encoder/layer_0/output/dense/biasB(bert/encoder/layer_0/output/dense/kernelB4bert/encoder/layer_1/attention/output/LayerNorm/betaB5bert/encoder/layer_1/attention/output/LayerNorm/gammaB0bert/encoder/layer_1/attention/output/dense/biasB2bert/encoder/layer_1/attention/output/dense/kernelB,bert/encoder/layer_1/attention/self/key/biasB.bert/encoder/layer_1/attention/self/key/kernelB.bert/encoder/layer_1/attention/self/query/biasB0bert/encoder/layer_1/attention/self/query/kernelB.bert/encoder/layer_1/attention/self/value/biasB0bert/encoder/layer_1/attention/self/value/kernelB,bert/encoder/layer_1/intermediate/dense/biasB.bert/encoder/layer_1/intermediate/dense/kernelB*bert/encoder/layer_1/output/LayerNorm/betaB+bert/encoder/layer_1/output/LayerNorm/gammaB&bert/encoder/layer_1/output/dense/biasB(bert/encoder/layer_1/output/dense/kernelB5bert/encoder/layer_10/attention/output/LayerNorm/betaB6bert/encoder/layer_10/attention/output/LayerNorm/gammaB1bert/encoder/layer_10/attention/output/dense/biasB3bert/encoder/layer_10/attention/output/dense/kernelB-bert/encoder/layer_10/attention/self/key/biasB/bert/encoder/layer_10/attention/self/key/kernelB/bert/encoder/layer_10/attention/self/query/biasB1bert/encoder/layer_10/attention/self/query/kernelB/bert/encoder/layer_10/attention/self/value/biasB1bert/encoder/layer_10/attention/self/value/kernelB-bert/encoder/layer_10/intermediate/dense/biasB/bert/encoder/layer_10/intermediate/dense/kernelB+bert/encoder/layer_10/output/LayerNorm/betaB,bert/encoder/layer_10/output/LayerNorm/gammaB'bert/encoder/layer_10/output/dense/biasB)bert/encoder/layer_10/output/dense/kernelB5bert/encoder/layer_11/attention/output/LayerNorm/betaB6bert/encoder/layer_11/attention/output/LayerNorm/gammaB1bert/encoder/layer_11/attention/output/dense/biasB3bert/encoder/layer_11/attention/output/dense/kernelB-bert/encoder/layer_11/attention/self/key/biasB/bert/encoder/layer_11/attention/self/key/kernelB/bert/encoder/layer_11/attention/self/query/biasB1bert/encoder/layer_11/attention/self/query/kernelB/bert/encoder/layer_11/attention/self/value/biasB1bert/encoder/layer_11/attention/self/value/kernelB-bert/encoder/layer_11/intermediate/dense/biasB/bert/encoder/layer_11/intermediate/dense/kernelB+bert/encoder/layer_11/output/LayerNorm/betaB,bert/encoder/layer_11/output/LayerNorm/gammaB'bert/encoder/layer_11/output/dense/biasB)bert/encoder/layer_11/output/dense/kernelB4bert/encoder/layer_2/attention/output/LayerNorm/betaB5bert/encoder/layer_2/attention/output/LayerNorm/gammaB0bert/encoder/layer_2/attention/output/dense/biasB2bert/encoder/layer_2/attention/output/dense/kernelB,bert/encoder/layer_2/attention/self/key/biasB.bert/encoder/layer_2/attention/self/key/kernelB.bert/encoder/layer_2/attention/self/query/biasB0bert/encoder/layer_2/attention/self/query/kernelB.bert/encoder/layer_2/attention/self/value/biasB0bert/encoder/layer_2/attention/self/value/kernelB,bert/encoder/layer_2/intermediate/dense/biasB.bert/encoder/layer_2/intermediate/dense/kernelB*bert/encoder/layer_2/output/LayerNorm/betaB+bert/encoder/layer_2/output/LayerNorm/gammaB&bert/encoder/layer_2/output/dense/biasB(bert/encoder/layer_2/output/dense/kernelB4bert/encoder/layer_3/attention/output/LayerNorm/betaB5bert/encoder/layer_3/attention/output/LayerNorm/gammaB0bert/encoder/layer_3/attention/output/dense/biasB2bert/encoder/layer_3/attention/output/dense/kernelB,bert/encoder/layer_3/attention/self/key/biasB.bert/encoder/layer_3/attention/self/key/kernelB.bert/encoder/layer_3/attention/self/query/biasB0bert/encoder/layer_3/attention/self/query/kernelB.bert/encoder/layer_3/attention/self/value/biasB0bert/encoder/layer_3/attention/self/value/kernelB,bert/encoder/layer_3/intermediate/dense/biasB.bert/encoder/layer_3/intermediate/dense/kernelB*bert/encoder/layer_3/output/LayerNorm/betaB+bert/encoder/layer_3/output/LayerNorm/gammaB&bert/encoder/layer_3/output/dense/biasB(bert/encoder/layer_3/output/dense/kernelB4bert/encoder/layer_4/attention/output/LayerNorm/betaB5bert/encoder/layer_4/attention/output/LayerNorm/gammaB0bert/encoder/layer_4/attention/output/dense/biasB2bert/encoder/layer_4/attention/output/dense/kernelB,bert/encoder/layer_4/attention/self/key/biasB.bert/encoder/layer_4/attention/self/key/kernelB.bert/encoder/layer_4/attention/self/query/biasB0bert/encoder/layer_4/attention/self/query/kernelB.bert/encoder/layer_4/attention/self/value/biasB0bert/encoder/layer_4/attention/self/value/kernelB,bert/encoder/layer_4/intermediate/dense/biasB.bert/encoder/layer_4/intermediate/dense/kernelB*bert/encoder/layer_4/output/LayerNorm/betaB+bert/encoder/layer_4/output/LayerNorm/gammaB&bert/encoder/layer_4/output/dense/biasB(bert/encoder/layer_4/output/dense/kernelB4bert/encoder/layer_5/attention/output/LayerNorm/betaB5bert/encoder/layer_5/attention/output/LayerNorm/gammaB0bert/encoder/layer_5/attention/output/dense/biasB2bert/encoder/layer_5/attention/output/dense/kernelB,bert/encoder/layer_5/attention/self/key/biasB.bert/encoder/layer_5/attention/self/key/kernelB.bert/encoder/layer_5/attention/self/query/biasB0bert/encoder/layer_5/attention/self/query/kernelB.bert/encoder/layer_5/attention/self/value/biasB0bert/encoder/layer_5/attention/self/value/kernelB,bert/encoder/layer_5/intermediate/dense/biasB.bert/encoder/layer_5/intermediate/dense/kernelB*bert/encoder/layer_5/output/LayerNorm/betaB+bert/encoder/layer_5/output/LayerNorm/gammaB&bert/encoder/layer_5/output/dense/biasB(bert/encoder/layer_5/output/dense/kernelB4bert/encoder/layer_6/attention/output/LayerNorm/betaB5bert/encoder/layer_6/attention/output/LayerNorm/gammaB0bert/encoder/layer_6/attention/output/dense/biasB2bert/encoder/layer_6/attention/output/dense/kernelB,bert/encoder/layer_6/attention/self/key/biasB.bert/encoder/layer_6/attention/self/key/kernelB.bert/encoder/layer_6/attention/self/query/biasB0bert/encoder/layer_6/attention/self/query/kernelB.bert/encoder/layer_6/attention/self/value/biasB0bert/encoder/layer_6/attention/self/value/kernelB,bert/encoder/layer_6/intermediate/dense/biasB.bert/encoder/layer_6/intermediate/dense/kernelB*bert/encoder/layer_6/output/LayerNorm/betaB+bert/encoder/layer_6/output/LayerNorm/gammaB&bert/encoder/layer_6/output/dense/biasB(bert/encoder/layer_6/output/dense/kernelB4bert/encoder/layer_7/attention/output/LayerNorm/betaB5bert/encoder/layer_7/attention/output/LayerNorm/gammaB0bert/encoder/layer_7/attention/output/dense/biasB2bert/encoder/layer_7/attention/output/dense/kernelB,bert/encoder/layer_7/attention/self/key/biasB.bert/encoder/layer_7/attention/self/key/kernelB.bert/encoder/layer_7/attention/self/query/biasB0bert/encoder/layer_7/attention/self/query/kernelB.bert/encoder/layer_7/attention/self/value/biasB0bert/encoder/layer_7/attention/self/value/kernelB,bert/encoder/layer_7/intermediate/dense/biasB.bert/encoder/layer_7/intermediate/dense/kernelB*bert/encoder/layer_7/output/LayerNorm/betaB+bert/encoder/layer_7/output/LayerNorm/gammaB&bert/encoder/layer_7/output/dense/biasB(bert/encoder/layer_7/output/dense/kernelB4bert/encoder/layer_8/attention/output/LayerNorm/betaB5bert/encoder/layer_8/attention/output/LayerNorm/gammaB0bert/encoder/layer_8/attention/output/dense/biasB2bert/encoder/layer_8/attention/output/dense/kernelB,bert/encoder/layer_8/attention/self/key/biasB.bert/encoder/layer_8/attention/self/key/kernelB.bert/encoder/layer_8/attention/self/query/biasB0bert/encoder/layer_8/attention/self/query/kernelB.bert/encoder/layer_8/attention/self/value/biasB0bert/encoder/layer_8/attention/self/value/kernelB,bert/encoder/layer_8/intermediate/dense/biasB.bert/encoder/layer_8/intermediate/dense/kernelB*bert/encoder/layer_8/output/LayerNorm/betaB+bert/encoder/layer_8/output/LayerNorm/gammaB&bert/encoder/layer_8/output/dense/biasB(bert/encoder/layer_8/output/dense/kernelB4bert/encoder/layer_9/attention/output/LayerNorm/betaB5bert/encoder/layer_9/attention/output/LayerNorm/gammaB0bert/encoder/layer_9/attention/output/dense/biasB2bert/encoder/layer_9/attention/output/dense/kernelB,bert/encoder/layer_9/attention/self/key/biasB.bert/encoder/layer_9/attention/self/key/kernelB.bert/encoder/layer_9/attention/self/query/biasB0bert/encoder/layer_9/attention/self/query/kernelB.bert/encoder/layer_9/attention/self/value/biasB0bert/encoder/layer_9/attention/self/value/kernelB,bert/encoder/layer_9/intermediate/dense/biasB.bert/encoder/layer_9/intermediate/dense/kernelB*bert/encoder/layer_9/output/LayerNorm/betaB+bert/encoder/layer_9/output/LayerNorm/gammaB&bert/encoder/layer_9/output/dense/biasB(bert/encoder/layer_9/output/dense/kernelBbert/pooler/dense/biasBbert/pooler/dense/kernelBglobal_stepBoutput_biasBoutput_weights*
dtype0*
_output_shapes	
:Ę

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:Ę*Ş
value BĘB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
	
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*ž
_output_shapesŤ
¨::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Ű
dtypesĐ
Í2Ę	
Ç
save/AssignAssignbert/embeddings/LayerNorm/betasave/RestoreV2*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
Í
save/Assign_1Assignbert/embeddings/LayerNorm/gammasave/RestoreV2:1*
use_locking(*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ú
save/Assign_2Assign#bert/embeddings/position_embeddingssave/RestoreV2:2* 
_output_shapes
:
*
use_locking(*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings*
validate_shape(
Ý
save/Assign_3Assign%bert/embeddings/token_type_embeddingssave/RestoreV2:3*
use_locking(*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
validate_shape(*
_output_shapes
:	
Ó
save/Assign_4Assignbert/embeddings/word_embeddingssave/RestoreV2:4*
use_locking(*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*
validate_shape(*!
_output_shapes
:Ľ
÷
save/Assign_5Assign4bert/encoder/layer_0/attention/output/LayerNorm/betasave/RestoreV2:5*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ů
save/Assign_6Assign5bert/encoder/layer_0/attention/output/LayerNorm/gammasave/RestoreV2:6*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma
ď
save/Assign_7Assign0bert/encoder/layer_0/attention/output/dense/biassave/RestoreV2:7*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_8Assign2bert/encoder/layer_0/attention/output/dense/kernelsave/RestoreV2:8*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ç
save/Assign_9Assign,bert/encoder/layer_0/attention/self/key/biassave/RestoreV2:9*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ň
save/Assign_10Assign.bert/encoder/layer_0/attention/self/key/kernelsave/RestoreV2:10*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

í
save/Assign_11Assign.bert/encoder/layer_0/attention/self/query/biassave/RestoreV2:11*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ö
save/Assign_12Assign0bert/encoder/layer_0/attention/self/query/kernelsave/RestoreV2:12*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
í
save/Assign_13Assign.bert/encoder/layer_0/attention/self/value/biassave/RestoreV2:13*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ö
save/Assign_14Assign0bert/encoder/layer_0/attention/self/value/kernelsave/RestoreV2:14*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
é
save/Assign_15Assign,bert/encoder/layer_0/intermediate/dense/biassave/RestoreV2:15*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
ň
save/Assign_16Assign.bert/encoder/layer_0/intermediate/dense/kernelsave/RestoreV2:16*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel
ĺ
save/Assign_17Assign*bert/encoder/layer_0/output/LayerNorm/betasave/RestoreV2:17*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
ç
save/Assign_18Assign+bert/encoder/layer_0/output/LayerNorm/gammasave/RestoreV2:18*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ý
save/Assign_19Assign&bert/encoder/layer_0/output/dense/biassave/RestoreV2:19*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
validate_shape(
ć
save/Assign_20Assign(bert/encoder/layer_0/output/dense/kernelsave/RestoreV2:20*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ů
save/Assign_21Assign4bert/encoder/layer_1/attention/output/LayerNorm/betasave/RestoreV2:21*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ű
save/Assign_22Assign5bert/encoder/layer_1/attention/output/LayerNorm/gammasave/RestoreV2:22*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma
ń
save/Assign_23Assign0bert/encoder/layer_1/attention/output/dense/biassave/RestoreV2:23*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ú
save/Assign_24Assign2bert/encoder/layer_1/attention/output/dense/kernelsave/RestoreV2:24*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
é
save/Assign_25Assign,bert/encoder/layer_1/attention/self/key/biassave/RestoreV2:25*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias
ň
save/Assign_26Assign.bert/encoder/layer_1/attention/self/key/kernelsave/RestoreV2:26*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

í
save/Assign_27Assign.bert/encoder/layer_1/attention/self/query/biassave/RestoreV2:27*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ö
save/Assign_28Assign0bert/encoder/layer_1/attention/self/query/kernelsave/RestoreV2:28* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
validate_shape(
í
save/Assign_29Assign.bert/encoder/layer_1/attention/self/value/biassave/RestoreV2:29*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ö
save/Assign_30Assign0bert/encoder/layer_1/attention/self/value/kernelsave/RestoreV2:30*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
é
save/Assign_31Assign,bert/encoder/layer_1/intermediate/dense/biassave/RestoreV2:31*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
ň
save/Assign_32Assign.bert/encoder/layer_1/intermediate/dense/kernelsave/RestoreV2:32*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel
ĺ
save/Assign_33Assign*bert/encoder/layer_1/output/LayerNorm/betasave/RestoreV2:33*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
validate_shape(
ç
save/Assign_34Assign+bert/encoder/layer_1/output/LayerNorm/gammasave/RestoreV2:34*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
validate_shape(
Ý
save/Assign_35Assign&bert/encoder/layer_1/output/dense/biassave/RestoreV2:35*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
validate_shape(*
_output_shapes	
:
ć
save/Assign_36Assign(bert/encoder/layer_1/output/dense/kernelsave/RestoreV2:36*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ű
save/Assign_37Assign5bert/encoder/layer_10/attention/output/LayerNorm/betasave/RestoreV2:37*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
validate_shape(
ý
save/Assign_38Assign6bert/encoder/layer_10/attention/output/LayerNorm/gammasave/RestoreV2:38*
_output_shapes	
:*
use_locking(*
T0*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
validate_shape(
ó
save/Assign_39Assign1bert/encoder/layer_10/attention/output/dense/biassave/RestoreV2:39*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
ü
save/Assign_40Assign3bert/encoder/layer_10/attention/output/dense/kernelsave/RestoreV2:40*
use_locking(*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_41Assign-bert/encoder/layer_10/attention/self/key/biassave/RestoreV2:41*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_42Assign/bert/encoder/layer_10/attention/self/key/kernelsave/RestoreV2:42*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ď
save/Assign_43Assign/bert/encoder/layer_10/attention/self/query/biassave/RestoreV2:43*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_44Assign1bert/encoder/layer_10/attention/self/query/kernelsave/RestoreV2:44*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ď
save/Assign_45Assign/bert/encoder/layer_10/attention/self/value/biassave/RestoreV2:45*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_46Assign1bert/encoder/layer_10/attention/self/value/kernelsave/RestoreV2:46*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_47Assign-bert/encoder/layer_10/intermediate/dense/biassave/RestoreV2:47*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_48Assign/bert/encoder/layer_10/intermediate/dense/kernelsave/RestoreV2:48*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ç
save/Assign_49Assign+bert/encoder/layer_10/output/LayerNorm/betasave/RestoreV2:49*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta
é
save/Assign_50Assign,bert/encoder/layer_10/output/LayerNorm/gammasave/RestoreV2:50*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
validate_shape(
ß
save/Assign_51Assign'bert/encoder/layer_10/output/dense/biassave/RestoreV2:51*
use_locking(*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
validate_shape(*
_output_shapes	
:
č
save/Assign_52Assign)bert/encoder/layer_10/output/dense/kernelsave/RestoreV2:52*
use_locking(*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ű
save/Assign_53Assign5bert/encoder/layer_11/attention/output/LayerNorm/betasave/RestoreV2:53*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
validate_shape(
ý
save/Assign_54Assign6bert/encoder/layer_11/attention/output/LayerNorm/gammasave/RestoreV2:54*
use_locking(*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ó
save/Assign_55Assign1bert/encoder/layer_11/attention/output/dense/biassave/RestoreV2:55*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias
ü
save/Assign_56Assign3bert/encoder/layer_11/attention/output/dense/kernelsave/RestoreV2:56* 
_output_shapes
:
*
use_locking(*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
validate_shape(
ë
save/Assign_57Assign-bert/encoder/layer_11/attention/self/key/biassave/RestoreV2:57*
use_locking(*
T0*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_58Assign/bert/encoder/layer_11/attention/self/key/kernelsave/RestoreV2:58*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ď
save/Assign_59Assign/bert/encoder/layer_11/attention/self/query/biassave/RestoreV2:59*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_60Assign1bert/encoder/layer_11/attention/self/query/kernelsave/RestoreV2:60*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel
ď
save/Assign_61Assign/bert/encoder/layer_11/attention/self/value/biassave/RestoreV2:61*
use_locking(*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_62Assign1bert/encoder/layer_11/attention/self/value/kernelsave/RestoreV2:62*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ë
save/Assign_63Assign-bert/encoder/layer_11/intermediate/dense/biassave/RestoreV2:63*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ô
save/Assign_64Assign/bert/encoder/layer_11/intermediate/dense/kernelsave/RestoreV2:64*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ç
save/Assign_65Assign+bert/encoder/layer_11/output/LayerNorm/betasave/RestoreV2:65*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
é
save/Assign_66Assign,bert/encoder/layer_11/output/LayerNorm/gammasave/RestoreV2:66*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ß
save/Assign_67Assign'bert/encoder/layer_11/output/dense/biassave/RestoreV2:67*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
č
save/Assign_68Assign)bert/encoder/layer_11/output/dense/kernelsave/RestoreV2:68* 
_output_shapes
:
*
use_locking(*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
validate_shape(
ů
save/Assign_69Assign4bert/encoder/layer_2/attention/output/LayerNorm/betasave/RestoreV2:69*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta
ű
save/Assign_70Assign5bert/encoder/layer_2/attention/output/LayerNorm/gammasave/RestoreV2:70*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
validate_shape(
ń
save/Assign_71Assign0bert/encoder/layer_2/attention/output/dense/biassave/RestoreV2:71*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
ú
save/Assign_72Assign2bert/encoder/layer_2/attention/output/dense/kernelsave/RestoreV2:72*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
é
save/Assign_73Assign,bert/encoder/layer_2/attention/self/key/biassave/RestoreV2:73*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ň
save/Assign_74Assign.bert/encoder/layer_2/attention/self/key/kernelsave/RestoreV2:74* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
validate_shape(
í
save/Assign_75Assign.bert/encoder/layer_2/attention/self/query/biassave/RestoreV2:75*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ö
save/Assign_76Assign0bert/encoder/layer_2/attention/self/query/kernelsave/RestoreV2:76*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
í
save/Assign_77Assign.bert/encoder/layer_2/attention/self/value/biassave/RestoreV2:77*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ö
save/Assign_78Assign0bert/encoder/layer_2/attention/self/value/kernelsave/RestoreV2:78*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
é
save/Assign_79Assign,bert/encoder/layer_2/intermediate/dense/biassave/RestoreV2:79*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ň
save/Assign_80Assign.bert/encoder/layer_2/intermediate/dense/kernelsave/RestoreV2:80*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ĺ
save/Assign_81Assign*bert/encoder/layer_2/output/LayerNorm/betasave/RestoreV2:81*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta
ç
save/Assign_82Assign+bert/encoder/layer_2/output/LayerNorm/gammasave/RestoreV2:82*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma
Ý
save/Assign_83Assign&bert/encoder/layer_2/output/dense/biassave/RestoreV2:83*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
validate_shape(*
_output_shapes	
:
ć
save/Assign_84Assign(bert/encoder/layer_2/output/dense/kernelsave/RestoreV2:84*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ů
save/Assign_85Assign4bert/encoder/layer_3/attention/output/LayerNorm/betasave/RestoreV2:85*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ű
save/Assign_86Assign5bert/encoder/layer_3/attention/output/LayerNorm/gammasave/RestoreV2:86*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma
ń
save/Assign_87Assign0bert/encoder/layer_3/attention/output/dense/biassave/RestoreV2:87*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
ú
save/Assign_88Assign2bert/encoder/layer_3/attention/output/dense/kernelsave/RestoreV2:88*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel
é
save/Assign_89Assign,bert/encoder/layer_3/attention/self/key/biassave/RestoreV2:89*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ň
save/Assign_90Assign.bert/encoder/layer_3/attention/self/key/kernelsave/RestoreV2:90*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

í
save/Assign_91Assign.bert/encoder/layer_3/attention/self/query/biassave/RestoreV2:91*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ö
save/Assign_92Assign0bert/encoder/layer_3/attention/self/query/kernelsave/RestoreV2:92*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

í
save/Assign_93Assign.bert/encoder/layer_3/attention/self/value/biassave/RestoreV2:93*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
validate_shape(
ö
save/Assign_94Assign0bert/encoder/layer_3/attention/self/value/kernelsave/RestoreV2:94*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

é
save/Assign_95Assign,bert/encoder/layer_3/intermediate/dense/biassave/RestoreV2:95*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ň
save/Assign_96Assign.bert/encoder/layer_3/intermediate/dense/kernelsave/RestoreV2:96*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ĺ
save/Assign_97Assign*bert/encoder/layer_3/output/LayerNorm/betasave/RestoreV2:97*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ç
save/Assign_98Assign+bert/encoder/layer_3/output/LayerNorm/gammasave/RestoreV2:98*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
Ý
save/Assign_99Assign&bert/encoder/layer_3/output/dense/biassave/RestoreV2:99*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
validate_shape(*
_output_shapes	
:
č
save/Assign_100Assign(bert/encoder/layer_3/output/dense/kernelsave/RestoreV2:100*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ű
save/Assign_101Assign4bert/encoder/layer_4/attention/output/LayerNorm/betasave/RestoreV2:101*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ý
save/Assign_102Assign5bert/encoder/layer_4/attention/output/LayerNorm/gammasave/RestoreV2:102*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ó
save/Assign_103Assign0bert/encoder/layer_4/attention/output/dense/biassave/RestoreV2:103*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias
ü
save/Assign_104Assign2bert/encoder/layer_4/attention/output/dense/kernelsave/RestoreV2:104* 
_output_shapes
:
*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
validate_shape(
ë
save/Assign_105Assign,bert/encoder/layer_4/attention/self/key/biassave/RestoreV2:105*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ô
save/Assign_106Assign.bert/encoder/layer_4/attention/self/key/kernelsave/RestoreV2:106* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
validate_shape(
ď
save/Assign_107Assign.bert/encoder/layer_4/attention/self/query/biassave/RestoreV2:107*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_108Assign0bert/encoder/layer_4/attention/self/query/kernelsave/RestoreV2:108*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:

ď
save/Assign_109Assign.bert/encoder/layer_4/attention/self/value/biassave/RestoreV2:109*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ř
save/Assign_110Assign0bert/encoder/layer_4/attention/self/value/kernelsave/RestoreV2:110*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_111Assign,bert/encoder/layer_4/intermediate/dense/biassave/RestoreV2:111*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_112Assign.bert/encoder/layer_4/intermediate/dense/kernelsave/RestoreV2:112*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ç
save/Assign_113Assign*bert/encoder/layer_4/output/LayerNorm/betasave/RestoreV2:113*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta
é
save/Assign_114Assign+bert/encoder/layer_4/output/LayerNorm/gammasave/RestoreV2:114*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ß
save/Assign_115Assign&bert/encoder/layer_4/output/dense/biassave/RestoreV2:115*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
validate_shape(*
_output_shapes	
:
č
save/Assign_116Assign(bert/encoder/layer_4/output/dense/kernelsave/RestoreV2:116*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ű
save/Assign_117Assign4bert/encoder/layer_5/attention/output/LayerNorm/betasave/RestoreV2:117*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ý
save/Assign_118Assign5bert/encoder/layer_5/attention/output/LayerNorm/gammasave/RestoreV2:118*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ó
save/Assign_119Assign0bert/encoder/layer_5/attention/output/dense/biassave/RestoreV2:119*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias
ü
save/Assign_120Assign2bert/encoder/layer_5/attention/output/dense/kernelsave/RestoreV2:120*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ë
save/Assign_121Assign,bert/encoder/layer_5/attention/self/key/biassave/RestoreV2:121*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
validate_shape(
ô
save/Assign_122Assign.bert/encoder/layer_5/attention/self/key/kernelsave/RestoreV2:122*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

ď
save/Assign_123Assign.bert/encoder/layer_5/attention/self/query/biassave/RestoreV2:123*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_124Assign0bert/encoder/layer_5/attention/self/query/kernelsave/RestoreV2:124*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ď
save/Assign_125Assign.bert/encoder/layer_5/attention/self/value/biassave/RestoreV2:125*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
validate_shape(
ř
save/Assign_126Assign0bert/encoder/layer_5/attention/self/value/kernelsave/RestoreV2:126*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ë
save/Assign_127Assign,bert/encoder/layer_5/intermediate/dense/biassave/RestoreV2:127*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ô
save/Assign_128Assign.bert/encoder/layer_5/intermediate/dense/kernelsave/RestoreV2:128*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ç
save/Assign_129Assign*bert/encoder/layer_5/output/LayerNorm/betasave/RestoreV2:129*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
é
save/Assign_130Assign+bert/encoder/layer_5/output/LayerNorm/gammasave/RestoreV2:130*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma
ß
save/Assign_131Assign&bert/encoder/layer_5/output/dense/biassave/RestoreV2:131*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
validate_shape(
č
save/Assign_132Assign(bert/encoder/layer_5/output/dense/kernelsave/RestoreV2:132*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ű
save/Assign_133Assign4bert/encoder/layer_6/attention/output/LayerNorm/betasave/RestoreV2:133*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ý
save/Assign_134Assign5bert/encoder/layer_6/attention/output/LayerNorm/gammasave/RestoreV2:134*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ó
save/Assign_135Assign0bert/encoder/layer_6/attention/output/dense/biassave/RestoreV2:135*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ü
save/Assign_136Assign2bert/encoder/layer_6/attention/output/dense/kernelsave/RestoreV2:136*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel
ë
save/Assign_137Assign,bert/encoder/layer_6/attention/self/key/biassave/RestoreV2:137*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_138Assign.bert/encoder/layer_6/attention/self/key/kernelsave/RestoreV2:138*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ď
save/Assign_139Assign.bert/encoder/layer_6/attention/self/query/biassave/RestoreV2:139*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_140Assign0bert/encoder/layer_6/attention/self/query/kernelsave/RestoreV2:140* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
validate_shape(
ď
save/Assign_141Assign.bert/encoder/layer_6/attention/self/value/biassave/RestoreV2:141*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_142Assign0bert/encoder/layer_6/attention/self/value/kernelsave/RestoreV2:142*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_143Assign,bert/encoder/layer_6/intermediate/dense/biassave/RestoreV2:143*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_144Assign.bert/encoder/layer_6/intermediate/dense/kernelsave/RestoreV2:144*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ç
save/Assign_145Assign*bert/encoder/layer_6/output/LayerNorm/betasave/RestoreV2:145*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta
é
save/Assign_146Assign+bert/encoder/layer_6/output/LayerNorm/gammasave/RestoreV2:146*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ß
save/Assign_147Assign&bert/encoder/layer_6/output/dense/biassave/RestoreV2:147*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias
č
save/Assign_148Assign(bert/encoder/layer_6/output/dense/kernelsave/RestoreV2:148* 
_output_shapes
:
*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
validate_shape(
ű
save/Assign_149Assign4bert/encoder/layer_7/attention/output/LayerNorm/betasave/RestoreV2:149*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ý
save/Assign_150Assign5bert/encoder/layer_7/attention/output/LayerNorm/gammasave/RestoreV2:150*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ó
save/Assign_151Assign0bert/encoder/layer_7/attention/output/dense/biassave/RestoreV2:151*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias
ü
save/Assign_152Assign2bert/encoder/layer_7/attention/output/dense/kernelsave/RestoreV2:152*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_153Assign,bert/encoder/layer_7/attention/self/key/biassave/RestoreV2:153*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ô
save/Assign_154Assign.bert/encoder/layer_7/attention/self/key/kernelsave/RestoreV2:154* 
_output_shapes
:
*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
validate_shape(
ď
save/Assign_155Assign.bert/encoder/layer_7/attention/self/query/biassave/RestoreV2:155*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ř
save/Assign_156Assign0bert/encoder/layer_7/attention/self/query/kernelsave/RestoreV2:156*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ď
save/Assign_157Assign.bert/encoder/layer_7/attention/self/value/biassave/RestoreV2:157*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_158Assign0bert/encoder/layer_7/attention/self/value/kernelsave/RestoreV2:158*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_159Assign,bert/encoder/layer_7/intermediate/dense/biassave/RestoreV2:159*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias
ô
save/Assign_160Assign.bert/encoder/layer_7/intermediate/dense/kernelsave/RestoreV2:160*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ç
save/Assign_161Assign*bert/encoder/layer_7/output/LayerNorm/betasave/RestoreV2:161*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta
é
save/Assign_162Assign+bert/encoder/layer_7/output/LayerNorm/gammasave/RestoreV2:162*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ß
save/Assign_163Assign&bert/encoder/layer_7/output/dense/biassave/RestoreV2:163*
use_locking(*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
validate_shape(*
_output_shapes	
:
č
save/Assign_164Assign(bert/encoder/layer_7/output/dense/kernelsave/RestoreV2:164*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ű
save/Assign_165Assign4bert/encoder/layer_8/attention/output/LayerNorm/betasave/RestoreV2:165*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ý
save/Assign_166Assign5bert/encoder/layer_8/attention/output/LayerNorm/gammasave/RestoreV2:166*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ó
save/Assign_167Assign0bert/encoder/layer_8/attention/output/dense/biassave/RestoreV2:167*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
ü
save/Assign_168Assign2bert/encoder/layer_8/attention/output/dense/kernelsave/RestoreV2:168*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_169Assign,bert/encoder/layer_8/attention/self/key/biassave/RestoreV2:169*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_170Assign.bert/encoder/layer_8/attention/self/key/kernelsave/RestoreV2:170*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:

ď
save/Assign_171Assign.bert/encoder/layer_8/attention/self/query/biassave/RestoreV2:171*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ř
save/Assign_172Assign0bert/encoder/layer_8/attention/self/query/kernelsave/RestoreV2:172*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ď
save/Assign_173Assign.bert/encoder/layer_8/attention/self/value/biassave/RestoreV2:173*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias
ř
save/Assign_174Assign0bert/encoder/layer_8/attention/self/value/kernelsave/RestoreV2:174*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:

ë
save/Assign_175Assign,bert/encoder/layer_8/intermediate/dense/biassave/RestoreV2:175*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_176Assign.bert/encoder/layer_8/intermediate/dense/kernelsave/RestoreV2:176*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ç
save/Assign_177Assign*bert/encoder/layer_8/output/LayerNorm/betasave/RestoreV2:177*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
é
save/Assign_178Assign+bert/encoder/layer_8/output/LayerNorm/gammasave/RestoreV2:178*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ß
save/Assign_179Assign&bert/encoder/layer_8/output/dense/biassave/RestoreV2:179*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
č
save/Assign_180Assign(bert/encoder/layer_8/output/dense/kernelsave/RestoreV2:180*
use_locking(*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
validate_shape(* 
_output_shapes
:

ű
save/Assign_181Assign4bert/encoder/layer_9/attention/output/LayerNorm/betasave/RestoreV2:181*
use_locking(*
T0*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
ý
save/Assign_182Assign5bert/encoder/layer_9/attention/output/LayerNorm/gammasave/RestoreV2:182*
use_locking(*
T0*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ó
save/Assign_183Assign0bert/encoder/layer_9/attention/output/dense/biassave/RestoreV2:183*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
validate_shape(*
_output_shapes	
:
ü
save/Assign_184Assign2bert/encoder/layer_9/attention/output/dense/kernelsave/RestoreV2:184* 
_output_shapes
:
*
use_locking(*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
validate_shape(
ë
save/Assign_185Assign,bert/encoder/layer_9/attention/self/key/biassave/RestoreV2:185*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
validate_shape(*
_output_shapes	
:
ô
save/Assign_186Assign.bert/encoder/layer_9/attention/self/key/kernelsave/RestoreV2:186*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
ď
save/Assign_187Assign.bert/encoder/layer_9/attention/self/query/biassave/RestoreV2:187*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_188Assign0bert/encoder/layer_9/attention/self/query/kernelsave/RestoreV2:188* 
_output_shapes
:
*
use_locking(*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
validate_shape(
ď
save/Assign_189Assign.bert/encoder/layer_9/attention/self/value/biassave/RestoreV2:189*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
validate_shape(*
_output_shapes	
:
ř
save/Assign_190Assign0bert/encoder/layer_9/attention/self/value/kernelsave/RestoreV2:190*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ë
save/Assign_191Assign,bert/encoder/layer_9/intermediate/dense/biassave/RestoreV2:191*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
validate_shape(
ô
save/Assign_192Assign.bert/encoder/layer_9/intermediate/dense/kernelsave/RestoreV2:192*
use_locking(*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
validate_shape(* 
_output_shapes
:

ç
save/Assign_193Assign*bert/encoder/layer_9/output/LayerNorm/betasave/RestoreV2:193*
use_locking(*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
é
save/Assign_194Assign+bert/encoder/layer_9/output/LayerNorm/gammasave/RestoreV2:194*
use_locking(*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
validate_shape(*
_output_shapes	
:
ß
save/Assign_195Assign&bert/encoder/layer_9/output/dense/biassave/RestoreV2:195*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
č
save/Assign_196Assign(bert/encoder/layer_9/output/dense/kernelsave/RestoreV2:196*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
ż
save/Assign_197Assignbert/pooler/dense/biassave/RestoreV2:197*)
_class
loc:@bert/pooler/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Č
save/Assign_198Assignbert/pooler/dense/kernelsave/RestoreV2:198*
use_locking(*
T0*+
_class!
loc:@bert/pooler/dense/kernel*
validate_shape(* 
_output_shapes
:

R
save/Identity_1Identitysave/RestoreV2:199*
T0	*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpglobal_stepsave/Identity_1*
dtype0	
¨
save/Assign_199Assignoutput_biassave/RestoreV2:200*
_class
loc:@output_bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ł
save/Assign_200Assignoutput_weightssave/RestoreV2:201*
use_locking(*
T0*!
_class
loc:@output_weights*
validate_shape(*
_output_shapes
:	
ä
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_16^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_17^save/Assign_170^save/Assign_171^save/Assign_172^save/Assign_173^save/Assign_174^save/Assign_175^save/Assign_176^save/Assign_177^save/Assign_178^save/Assign_179^save/Assign_18^save/Assign_180^save/Assign_181^save/Assign_182^save/Assign_183^save/Assign_184^save/Assign_185^save/Assign_186^save/Assign_187^save/Assign_188^save/Assign_189^save/Assign_19^save/Assign_190^save/Assign_191^save/Assign_192^save/Assign_193^save/Assign_194^save/Assign_195^save/Assign_196^save/Assign_197^save/Assign_198^save/Assign_199^save/Assign_2^save/Assign_20^save/Assign_200^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"|
global_stepmk
i
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0"Íî
	variablesžîşî
i
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0
u
!bert/embeddings/word_embeddings:0
Assign_4:0&bert/embeddings/word_embeddings/read:02checkpoint_initializer_4:08

'bert/embeddings/token_type_embeddings:0
Assign_3:0,bert/embeddings/token_type_embeddings/read:02checkpoint_initializer_3:08
}
%bert/embeddings/position_embeddings:0
Assign_2:0*bert/embeddings/position_embeddings/read:02checkpoint_initializer_2:08
o
 bert/embeddings/LayerNorm/beta:0Assign:0%bert/embeddings/LayerNorm/beta/read:02checkpoint_initializer:08
u
!bert/embeddings/LayerNorm/gamma:0
Assign_1:0&bert/embeddings/LayerNorm/gamma/read:02checkpoint_initializer_1:08

2bert/encoder/layer_0/attention/self/query/kernel:0Assign_12:07bert/encoder/layer_0/attention/self/query/kernel/read:02checkpoint_initializer_12:08

0bert/encoder/layer_0/attention/self/query/bias:0Assign_11:05bert/encoder/layer_0/attention/self/query/bias/read:02checkpoint_initializer_11:08

0bert/encoder/layer_0/attention/self/key/kernel:0Assign_10:05bert/encoder/layer_0/attention/self/key/kernel/read:02checkpoint_initializer_10:08

.bert/encoder/layer_0/attention/self/key/bias:0
Assign_9:03bert/encoder/layer_0/attention/self/key/bias/read:02checkpoint_initializer_9:08

2bert/encoder/layer_0/attention/self/value/kernel:0Assign_14:07bert/encoder/layer_0/attention/self/value/kernel/read:02checkpoint_initializer_14:08

0bert/encoder/layer_0/attention/self/value/bias:0Assign_13:05bert/encoder/layer_0/attention/self/value/bias/read:02checkpoint_initializer_13:08

4bert/encoder/layer_0/attention/output/dense/kernel:0
Assign_8:09bert/encoder/layer_0/attention/output/dense/kernel/read:02checkpoint_initializer_8:08

2bert/encoder/layer_0/attention/output/dense/bias:0
Assign_7:07bert/encoder/layer_0/attention/output/dense/bias/read:02checkpoint_initializer_7:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0
Assign_5:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/read:02checkpoint_initializer_5:08
Ą
7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0
Assign_6:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_6:08

0bert/encoder/layer_0/intermediate/dense/kernel:0Assign_16:05bert/encoder/layer_0/intermediate/dense/kernel/read:02checkpoint_initializer_16:08

.bert/encoder/layer_0/intermediate/dense/bias:0Assign_15:03bert/encoder/layer_0/intermediate/dense/bias/read:02checkpoint_initializer_15:08

*bert/encoder/layer_0/output/dense/kernel:0Assign_20:0/bert/encoder/layer_0/output/dense/kernel/read:02checkpoint_initializer_20:08

(bert/encoder/layer_0/output/dense/bias:0Assign_19:0-bert/encoder/layer_0/output/dense/bias/read:02checkpoint_initializer_19:08

,bert/encoder/layer_0/output/LayerNorm/beta:0Assign_17:01bert/encoder/layer_0/output/LayerNorm/beta/read:02checkpoint_initializer_17:08

-bert/encoder/layer_0/output/LayerNorm/gamma:0Assign_18:02bert/encoder/layer_0/output/LayerNorm/gamma/read:02checkpoint_initializer_18:08

2bert/encoder/layer_1/attention/self/query/kernel:0Assign_28:07bert/encoder/layer_1/attention/self/query/kernel/read:02checkpoint_initializer_28:08

0bert/encoder/layer_1/attention/self/query/bias:0Assign_27:05bert/encoder/layer_1/attention/self/query/bias/read:02checkpoint_initializer_27:08

0bert/encoder/layer_1/attention/self/key/kernel:0Assign_26:05bert/encoder/layer_1/attention/self/key/kernel/read:02checkpoint_initializer_26:08

.bert/encoder/layer_1/attention/self/key/bias:0Assign_25:03bert/encoder/layer_1/attention/self/key/bias/read:02checkpoint_initializer_25:08

2bert/encoder/layer_1/attention/self/value/kernel:0Assign_30:07bert/encoder/layer_1/attention/self/value/kernel/read:02checkpoint_initializer_30:08

0bert/encoder/layer_1/attention/self/value/bias:0Assign_29:05bert/encoder/layer_1/attention/self/value/bias/read:02checkpoint_initializer_29:08

4bert/encoder/layer_1/attention/output/dense/kernel:0Assign_24:09bert/encoder/layer_1/attention/output/dense/kernel/read:02checkpoint_initializer_24:08

2bert/encoder/layer_1/attention/output/dense/bias:0Assign_23:07bert/encoder/layer_1/attention/output/dense/bias/read:02checkpoint_initializer_23:08
Ą
6bert/encoder/layer_1/attention/output/LayerNorm/beta:0Assign_21:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/read:02checkpoint_initializer_21:08
Ł
7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0Assign_22:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_22:08

0bert/encoder/layer_1/intermediate/dense/kernel:0Assign_32:05bert/encoder/layer_1/intermediate/dense/kernel/read:02checkpoint_initializer_32:08

.bert/encoder/layer_1/intermediate/dense/bias:0Assign_31:03bert/encoder/layer_1/intermediate/dense/bias/read:02checkpoint_initializer_31:08

*bert/encoder/layer_1/output/dense/kernel:0Assign_36:0/bert/encoder/layer_1/output/dense/kernel/read:02checkpoint_initializer_36:08

(bert/encoder/layer_1/output/dense/bias:0Assign_35:0-bert/encoder/layer_1/output/dense/bias/read:02checkpoint_initializer_35:08

,bert/encoder/layer_1/output/LayerNorm/beta:0Assign_33:01bert/encoder/layer_1/output/LayerNorm/beta/read:02checkpoint_initializer_33:08

-bert/encoder/layer_1/output/LayerNorm/gamma:0Assign_34:02bert/encoder/layer_1/output/LayerNorm/gamma/read:02checkpoint_initializer_34:08

2bert/encoder/layer_2/attention/self/query/kernel:0Assign_76:07bert/encoder/layer_2/attention/self/query/kernel/read:02checkpoint_initializer_76:08

0bert/encoder/layer_2/attention/self/query/bias:0Assign_75:05bert/encoder/layer_2/attention/self/query/bias/read:02checkpoint_initializer_75:08

0bert/encoder/layer_2/attention/self/key/kernel:0Assign_74:05bert/encoder/layer_2/attention/self/key/kernel/read:02checkpoint_initializer_74:08

.bert/encoder/layer_2/attention/self/key/bias:0Assign_73:03bert/encoder/layer_2/attention/self/key/bias/read:02checkpoint_initializer_73:08

2bert/encoder/layer_2/attention/self/value/kernel:0Assign_78:07bert/encoder/layer_2/attention/self/value/kernel/read:02checkpoint_initializer_78:08

0bert/encoder/layer_2/attention/self/value/bias:0Assign_77:05bert/encoder/layer_2/attention/self/value/bias/read:02checkpoint_initializer_77:08

4bert/encoder/layer_2/attention/output/dense/kernel:0Assign_72:09bert/encoder/layer_2/attention/output/dense/kernel/read:02checkpoint_initializer_72:08

2bert/encoder/layer_2/attention/output/dense/bias:0Assign_71:07bert/encoder/layer_2/attention/output/dense/bias/read:02checkpoint_initializer_71:08
Ą
6bert/encoder/layer_2/attention/output/LayerNorm/beta:0Assign_69:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/read:02checkpoint_initializer_69:08
Ł
7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0Assign_70:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_70:08

0bert/encoder/layer_2/intermediate/dense/kernel:0Assign_80:05bert/encoder/layer_2/intermediate/dense/kernel/read:02checkpoint_initializer_80:08

.bert/encoder/layer_2/intermediate/dense/bias:0Assign_79:03bert/encoder/layer_2/intermediate/dense/bias/read:02checkpoint_initializer_79:08

*bert/encoder/layer_2/output/dense/kernel:0Assign_84:0/bert/encoder/layer_2/output/dense/kernel/read:02checkpoint_initializer_84:08

(bert/encoder/layer_2/output/dense/bias:0Assign_83:0-bert/encoder/layer_2/output/dense/bias/read:02checkpoint_initializer_83:08

,bert/encoder/layer_2/output/LayerNorm/beta:0Assign_81:01bert/encoder/layer_2/output/LayerNorm/beta/read:02checkpoint_initializer_81:08

-bert/encoder/layer_2/output/LayerNorm/gamma:0Assign_82:02bert/encoder/layer_2/output/LayerNorm/gamma/read:02checkpoint_initializer_82:08

2bert/encoder/layer_3/attention/self/query/kernel:0Assign_92:07bert/encoder/layer_3/attention/self/query/kernel/read:02checkpoint_initializer_92:08

0bert/encoder/layer_3/attention/self/query/bias:0Assign_91:05bert/encoder/layer_3/attention/self/query/bias/read:02checkpoint_initializer_91:08

0bert/encoder/layer_3/attention/self/key/kernel:0Assign_90:05bert/encoder/layer_3/attention/self/key/kernel/read:02checkpoint_initializer_90:08

.bert/encoder/layer_3/attention/self/key/bias:0Assign_89:03bert/encoder/layer_3/attention/self/key/bias/read:02checkpoint_initializer_89:08

2bert/encoder/layer_3/attention/self/value/kernel:0Assign_94:07bert/encoder/layer_3/attention/self/value/kernel/read:02checkpoint_initializer_94:08

0bert/encoder/layer_3/attention/self/value/bias:0Assign_93:05bert/encoder/layer_3/attention/self/value/bias/read:02checkpoint_initializer_93:08

4bert/encoder/layer_3/attention/output/dense/kernel:0Assign_88:09bert/encoder/layer_3/attention/output/dense/kernel/read:02checkpoint_initializer_88:08

2bert/encoder/layer_3/attention/output/dense/bias:0Assign_87:07bert/encoder/layer_3/attention/output/dense/bias/read:02checkpoint_initializer_87:08
Ą
6bert/encoder/layer_3/attention/output/LayerNorm/beta:0Assign_85:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/read:02checkpoint_initializer_85:08
Ł
7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0Assign_86:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_86:08

0bert/encoder/layer_3/intermediate/dense/kernel:0Assign_96:05bert/encoder/layer_3/intermediate/dense/kernel/read:02checkpoint_initializer_96:08

.bert/encoder/layer_3/intermediate/dense/bias:0Assign_95:03bert/encoder/layer_3/intermediate/dense/bias/read:02checkpoint_initializer_95:08

*bert/encoder/layer_3/output/dense/kernel:0Assign_100:0/bert/encoder/layer_3/output/dense/kernel/read:02checkpoint_initializer_100:08

(bert/encoder/layer_3/output/dense/bias:0Assign_99:0-bert/encoder/layer_3/output/dense/bias/read:02checkpoint_initializer_99:08

,bert/encoder/layer_3/output/LayerNorm/beta:0Assign_97:01bert/encoder/layer_3/output/LayerNorm/beta/read:02checkpoint_initializer_97:08

-bert/encoder/layer_3/output/LayerNorm/gamma:0Assign_98:02bert/encoder/layer_3/output/LayerNorm/gamma/read:02checkpoint_initializer_98:08

2bert/encoder/layer_4/attention/self/query/kernel:0Assign_108:07bert/encoder/layer_4/attention/self/query/kernel/read:02checkpoint_initializer_108:08

0bert/encoder/layer_4/attention/self/query/bias:0Assign_107:05bert/encoder/layer_4/attention/self/query/bias/read:02checkpoint_initializer_107:08

0bert/encoder/layer_4/attention/self/key/kernel:0Assign_106:05bert/encoder/layer_4/attention/self/key/kernel/read:02checkpoint_initializer_106:08

.bert/encoder/layer_4/attention/self/key/bias:0Assign_105:03bert/encoder/layer_4/attention/self/key/bias/read:02checkpoint_initializer_105:08

2bert/encoder/layer_4/attention/self/value/kernel:0Assign_110:07bert/encoder/layer_4/attention/self/value/kernel/read:02checkpoint_initializer_110:08

0bert/encoder/layer_4/attention/self/value/bias:0Assign_109:05bert/encoder/layer_4/attention/self/value/bias/read:02checkpoint_initializer_109:08

4bert/encoder/layer_4/attention/output/dense/kernel:0Assign_104:09bert/encoder/layer_4/attention/output/dense/kernel/read:02checkpoint_initializer_104:08

2bert/encoder/layer_4/attention/output/dense/bias:0Assign_103:07bert/encoder/layer_4/attention/output/dense/bias/read:02checkpoint_initializer_103:08
Ł
6bert/encoder/layer_4/attention/output/LayerNorm/beta:0Assign_101:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/read:02checkpoint_initializer_101:08
Ľ
7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0Assign_102:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_102:08

0bert/encoder/layer_4/intermediate/dense/kernel:0Assign_112:05bert/encoder/layer_4/intermediate/dense/kernel/read:02checkpoint_initializer_112:08

.bert/encoder/layer_4/intermediate/dense/bias:0Assign_111:03bert/encoder/layer_4/intermediate/dense/bias/read:02checkpoint_initializer_111:08

*bert/encoder/layer_4/output/dense/kernel:0Assign_116:0/bert/encoder/layer_4/output/dense/kernel/read:02checkpoint_initializer_116:08

(bert/encoder/layer_4/output/dense/bias:0Assign_115:0-bert/encoder/layer_4/output/dense/bias/read:02checkpoint_initializer_115:08

,bert/encoder/layer_4/output/LayerNorm/beta:0Assign_113:01bert/encoder/layer_4/output/LayerNorm/beta/read:02checkpoint_initializer_113:08

-bert/encoder/layer_4/output/LayerNorm/gamma:0Assign_114:02bert/encoder/layer_4/output/LayerNorm/gamma/read:02checkpoint_initializer_114:08

2bert/encoder/layer_5/attention/self/query/kernel:0Assign_124:07bert/encoder/layer_5/attention/self/query/kernel/read:02checkpoint_initializer_124:08

0bert/encoder/layer_5/attention/self/query/bias:0Assign_123:05bert/encoder/layer_5/attention/self/query/bias/read:02checkpoint_initializer_123:08

0bert/encoder/layer_5/attention/self/key/kernel:0Assign_122:05bert/encoder/layer_5/attention/self/key/kernel/read:02checkpoint_initializer_122:08

.bert/encoder/layer_5/attention/self/key/bias:0Assign_121:03bert/encoder/layer_5/attention/self/key/bias/read:02checkpoint_initializer_121:08

2bert/encoder/layer_5/attention/self/value/kernel:0Assign_126:07bert/encoder/layer_5/attention/self/value/kernel/read:02checkpoint_initializer_126:08

0bert/encoder/layer_5/attention/self/value/bias:0Assign_125:05bert/encoder/layer_5/attention/self/value/bias/read:02checkpoint_initializer_125:08

4bert/encoder/layer_5/attention/output/dense/kernel:0Assign_120:09bert/encoder/layer_5/attention/output/dense/kernel/read:02checkpoint_initializer_120:08

2bert/encoder/layer_5/attention/output/dense/bias:0Assign_119:07bert/encoder/layer_5/attention/output/dense/bias/read:02checkpoint_initializer_119:08
Ł
6bert/encoder/layer_5/attention/output/LayerNorm/beta:0Assign_117:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/read:02checkpoint_initializer_117:08
Ľ
7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0Assign_118:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_118:08

0bert/encoder/layer_5/intermediate/dense/kernel:0Assign_128:05bert/encoder/layer_5/intermediate/dense/kernel/read:02checkpoint_initializer_128:08

.bert/encoder/layer_5/intermediate/dense/bias:0Assign_127:03bert/encoder/layer_5/intermediate/dense/bias/read:02checkpoint_initializer_127:08

*bert/encoder/layer_5/output/dense/kernel:0Assign_132:0/bert/encoder/layer_5/output/dense/kernel/read:02checkpoint_initializer_132:08

(bert/encoder/layer_5/output/dense/bias:0Assign_131:0-bert/encoder/layer_5/output/dense/bias/read:02checkpoint_initializer_131:08

,bert/encoder/layer_5/output/LayerNorm/beta:0Assign_129:01bert/encoder/layer_5/output/LayerNorm/beta/read:02checkpoint_initializer_129:08

-bert/encoder/layer_5/output/LayerNorm/gamma:0Assign_130:02bert/encoder/layer_5/output/LayerNorm/gamma/read:02checkpoint_initializer_130:08

2bert/encoder/layer_6/attention/self/query/kernel:0Assign_140:07bert/encoder/layer_6/attention/self/query/kernel/read:02checkpoint_initializer_140:08

0bert/encoder/layer_6/attention/self/query/bias:0Assign_139:05bert/encoder/layer_6/attention/self/query/bias/read:02checkpoint_initializer_139:08

0bert/encoder/layer_6/attention/self/key/kernel:0Assign_138:05bert/encoder/layer_6/attention/self/key/kernel/read:02checkpoint_initializer_138:08

.bert/encoder/layer_6/attention/self/key/bias:0Assign_137:03bert/encoder/layer_6/attention/self/key/bias/read:02checkpoint_initializer_137:08

2bert/encoder/layer_6/attention/self/value/kernel:0Assign_142:07bert/encoder/layer_6/attention/self/value/kernel/read:02checkpoint_initializer_142:08

0bert/encoder/layer_6/attention/self/value/bias:0Assign_141:05bert/encoder/layer_6/attention/self/value/bias/read:02checkpoint_initializer_141:08

4bert/encoder/layer_6/attention/output/dense/kernel:0Assign_136:09bert/encoder/layer_6/attention/output/dense/kernel/read:02checkpoint_initializer_136:08

2bert/encoder/layer_6/attention/output/dense/bias:0Assign_135:07bert/encoder/layer_6/attention/output/dense/bias/read:02checkpoint_initializer_135:08
Ł
6bert/encoder/layer_6/attention/output/LayerNorm/beta:0Assign_133:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/read:02checkpoint_initializer_133:08
Ľ
7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0Assign_134:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_134:08

0bert/encoder/layer_6/intermediate/dense/kernel:0Assign_144:05bert/encoder/layer_6/intermediate/dense/kernel/read:02checkpoint_initializer_144:08

.bert/encoder/layer_6/intermediate/dense/bias:0Assign_143:03bert/encoder/layer_6/intermediate/dense/bias/read:02checkpoint_initializer_143:08

*bert/encoder/layer_6/output/dense/kernel:0Assign_148:0/bert/encoder/layer_6/output/dense/kernel/read:02checkpoint_initializer_148:08

(bert/encoder/layer_6/output/dense/bias:0Assign_147:0-bert/encoder/layer_6/output/dense/bias/read:02checkpoint_initializer_147:08

,bert/encoder/layer_6/output/LayerNorm/beta:0Assign_145:01bert/encoder/layer_6/output/LayerNorm/beta/read:02checkpoint_initializer_145:08

-bert/encoder/layer_6/output/LayerNorm/gamma:0Assign_146:02bert/encoder/layer_6/output/LayerNorm/gamma/read:02checkpoint_initializer_146:08

2bert/encoder/layer_7/attention/self/query/kernel:0Assign_156:07bert/encoder/layer_7/attention/self/query/kernel/read:02checkpoint_initializer_156:08

0bert/encoder/layer_7/attention/self/query/bias:0Assign_155:05bert/encoder/layer_7/attention/self/query/bias/read:02checkpoint_initializer_155:08

0bert/encoder/layer_7/attention/self/key/kernel:0Assign_154:05bert/encoder/layer_7/attention/self/key/kernel/read:02checkpoint_initializer_154:08

.bert/encoder/layer_7/attention/self/key/bias:0Assign_153:03bert/encoder/layer_7/attention/self/key/bias/read:02checkpoint_initializer_153:08

2bert/encoder/layer_7/attention/self/value/kernel:0Assign_158:07bert/encoder/layer_7/attention/self/value/kernel/read:02checkpoint_initializer_158:08

0bert/encoder/layer_7/attention/self/value/bias:0Assign_157:05bert/encoder/layer_7/attention/self/value/bias/read:02checkpoint_initializer_157:08

4bert/encoder/layer_7/attention/output/dense/kernel:0Assign_152:09bert/encoder/layer_7/attention/output/dense/kernel/read:02checkpoint_initializer_152:08

2bert/encoder/layer_7/attention/output/dense/bias:0Assign_151:07bert/encoder/layer_7/attention/output/dense/bias/read:02checkpoint_initializer_151:08
Ł
6bert/encoder/layer_7/attention/output/LayerNorm/beta:0Assign_149:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/read:02checkpoint_initializer_149:08
Ľ
7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0Assign_150:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_150:08

0bert/encoder/layer_7/intermediate/dense/kernel:0Assign_160:05bert/encoder/layer_7/intermediate/dense/kernel/read:02checkpoint_initializer_160:08

.bert/encoder/layer_7/intermediate/dense/bias:0Assign_159:03bert/encoder/layer_7/intermediate/dense/bias/read:02checkpoint_initializer_159:08

*bert/encoder/layer_7/output/dense/kernel:0Assign_164:0/bert/encoder/layer_7/output/dense/kernel/read:02checkpoint_initializer_164:08

(bert/encoder/layer_7/output/dense/bias:0Assign_163:0-bert/encoder/layer_7/output/dense/bias/read:02checkpoint_initializer_163:08

,bert/encoder/layer_7/output/LayerNorm/beta:0Assign_161:01bert/encoder/layer_7/output/LayerNorm/beta/read:02checkpoint_initializer_161:08

-bert/encoder/layer_7/output/LayerNorm/gamma:0Assign_162:02bert/encoder/layer_7/output/LayerNorm/gamma/read:02checkpoint_initializer_162:08

2bert/encoder/layer_8/attention/self/query/kernel:0Assign_172:07bert/encoder/layer_8/attention/self/query/kernel/read:02checkpoint_initializer_172:08

0bert/encoder/layer_8/attention/self/query/bias:0Assign_171:05bert/encoder/layer_8/attention/self/query/bias/read:02checkpoint_initializer_171:08

0bert/encoder/layer_8/attention/self/key/kernel:0Assign_170:05bert/encoder/layer_8/attention/self/key/kernel/read:02checkpoint_initializer_170:08

.bert/encoder/layer_8/attention/self/key/bias:0Assign_169:03bert/encoder/layer_8/attention/self/key/bias/read:02checkpoint_initializer_169:08

2bert/encoder/layer_8/attention/self/value/kernel:0Assign_174:07bert/encoder/layer_8/attention/self/value/kernel/read:02checkpoint_initializer_174:08

0bert/encoder/layer_8/attention/self/value/bias:0Assign_173:05bert/encoder/layer_8/attention/self/value/bias/read:02checkpoint_initializer_173:08

4bert/encoder/layer_8/attention/output/dense/kernel:0Assign_168:09bert/encoder/layer_8/attention/output/dense/kernel/read:02checkpoint_initializer_168:08

2bert/encoder/layer_8/attention/output/dense/bias:0Assign_167:07bert/encoder/layer_8/attention/output/dense/bias/read:02checkpoint_initializer_167:08
Ł
6bert/encoder/layer_8/attention/output/LayerNorm/beta:0Assign_165:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/read:02checkpoint_initializer_165:08
Ľ
7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0Assign_166:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_166:08

0bert/encoder/layer_8/intermediate/dense/kernel:0Assign_176:05bert/encoder/layer_8/intermediate/dense/kernel/read:02checkpoint_initializer_176:08

.bert/encoder/layer_8/intermediate/dense/bias:0Assign_175:03bert/encoder/layer_8/intermediate/dense/bias/read:02checkpoint_initializer_175:08

*bert/encoder/layer_8/output/dense/kernel:0Assign_180:0/bert/encoder/layer_8/output/dense/kernel/read:02checkpoint_initializer_180:08

(bert/encoder/layer_8/output/dense/bias:0Assign_179:0-bert/encoder/layer_8/output/dense/bias/read:02checkpoint_initializer_179:08

,bert/encoder/layer_8/output/LayerNorm/beta:0Assign_177:01bert/encoder/layer_8/output/LayerNorm/beta/read:02checkpoint_initializer_177:08

-bert/encoder/layer_8/output/LayerNorm/gamma:0Assign_178:02bert/encoder/layer_8/output/LayerNorm/gamma/read:02checkpoint_initializer_178:08

2bert/encoder/layer_9/attention/self/query/kernel:0Assign_188:07bert/encoder/layer_9/attention/self/query/kernel/read:02checkpoint_initializer_188:08

0bert/encoder/layer_9/attention/self/query/bias:0Assign_187:05bert/encoder/layer_9/attention/self/query/bias/read:02checkpoint_initializer_187:08

0bert/encoder/layer_9/attention/self/key/kernel:0Assign_186:05bert/encoder/layer_9/attention/self/key/kernel/read:02checkpoint_initializer_186:08

.bert/encoder/layer_9/attention/self/key/bias:0Assign_185:03bert/encoder/layer_9/attention/self/key/bias/read:02checkpoint_initializer_185:08

2bert/encoder/layer_9/attention/self/value/kernel:0Assign_190:07bert/encoder/layer_9/attention/self/value/kernel/read:02checkpoint_initializer_190:08

0bert/encoder/layer_9/attention/self/value/bias:0Assign_189:05bert/encoder/layer_9/attention/self/value/bias/read:02checkpoint_initializer_189:08

4bert/encoder/layer_9/attention/output/dense/kernel:0Assign_184:09bert/encoder/layer_9/attention/output/dense/kernel/read:02checkpoint_initializer_184:08

2bert/encoder/layer_9/attention/output/dense/bias:0Assign_183:07bert/encoder/layer_9/attention/output/dense/bias/read:02checkpoint_initializer_183:08
Ł
6bert/encoder/layer_9/attention/output/LayerNorm/beta:0Assign_181:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/read:02checkpoint_initializer_181:08
Ľ
7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0Assign_182:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_182:08

0bert/encoder/layer_9/intermediate/dense/kernel:0Assign_192:05bert/encoder/layer_9/intermediate/dense/kernel/read:02checkpoint_initializer_192:08

.bert/encoder/layer_9/intermediate/dense/bias:0Assign_191:03bert/encoder/layer_9/intermediate/dense/bias/read:02checkpoint_initializer_191:08

*bert/encoder/layer_9/output/dense/kernel:0Assign_196:0/bert/encoder/layer_9/output/dense/kernel/read:02checkpoint_initializer_196:08

(bert/encoder/layer_9/output/dense/bias:0Assign_195:0-bert/encoder/layer_9/output/dense/bias/read:02checkpoint_initializer_195:08

,bert/encoder/layer_9/output/LayerNorm/beta:0Assign_193:01bert/encoder/layer_9/output/LayerNorm/beta/read:02checkpoint_initializer_193:08

-bert/encoder/layer_9/output/LayerNorm/gamma:0Assign_194:02bert/encoder/layer_9/output/LayerNorm/gamma/read:02checkpoint_initializer_194:08

3bert/encoder/layer_10/attention/self/query/kernel:0Assign_44:08bert/encoder/layer_10/attention/self/query/kernel/read:02checkpoint_initializer_44:08

1bert/encoder/layer_10/attention/self/query/bias:0Assign_43:06bert/encoder/layer_10/attention/self/query/bias/read:02checkpoint_initializer_43:08

1bert/encoder/layer_10/attention/self/key/kernel:0Assign_42:06bert/encoder/layer_10/attention/self/key/kernel/read:02checkpoint_initializer_42:08

/bert/encoder/layer_10/attention/self/key/bias:0Assign_41:04bert/encoder/layer_10/attention/self/key/bias/read:02checkpoint_initializer_41:08

3bert/encoder/layer_10/attention/self/value/kernel:0Assign_46:08bert/encoder/layer_10/attention/self/value/kernel/read:02checkpoint_initializer_46:08

1bert/encoder/layer_10/attention/self/value/bias:0Assign_45:06bert/encoder/layer_10/attention/self/value/bias/read:02checkpoint_initializer_45:08

5bert/encoder/layer_10/attention/output/dense/kernel:0Assign_40:0:bert/encoder/layer_10/attention/output/dense/kernel/read:02checkpoint_initializer_40:08

3bert/encoder/layer_10/attention/output/dense/bias:0Assign_39:08bert/encoder/layer_10/attention/output/dense/bias/read:02checkpoint_initializer_39:08
Ł
7bert/encoder/layer_10/attention/output/LayerNorm/beta:0Assign_37:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/read:02checkpoint_initializer_37:08
Ľ
8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0Assign_38:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_38:08

1bert/encoder/layer_10/intermediate/dense/kernel:0Assign_48:06bert/encoder/layer_10/intermediate/dense/kernel/read:02checkpoint_initializer_48:08

/bert/encoder/layer_10/intermediate/dense/bias:0Assign_47:04bert/encoder/layer_10/intermediate/dense/bias/read:02checkpoint_initializer_47:08

+bert/encoder/layer_10/output/dense/kernel:0Assign_52:00bert/encoder/layer_10/output/dense/kernel/read:02checkpoint_initializer_52:08

)bert/encoder/layer_10/output/dense/bias:0Assign_51:0.bert/encoder/layer_10/output/dense/bias/read:02checkpoint_initializer_51:08

-bert/encoder/layer_10/output/LayerNorm/beta:0Assign_49:02bert/encoder/layer_10/output/LayerNorm/beta/read:02checkpoint_initializer_49:08

.bert/encoder/layer_10/output/LayerNorm/gamma:0Assign_50:03bert/encoder/layer_10/output/LayerNorm/gamma/read:02checkpoint_initializer_50:08

3bert/encoder/layer_11/attention/self/query/kernel:0Assign_60:08bert/encoder/layer_11/attention/self/query/kernel/read:02checkpoint_initializer_60:08

1bert/encoder/layer_11/attention/self/query/bias:0Assign_59:06bert/encoder/layer_11/attention/self/query/bias/read:02checkpoint_initializer_59:08

1bert/encoder/layer_11/attention/self/key/kernel:0Assign_58:06bert/encoder/layer_11/attention/self/key/kernel/read:02checkpoint_initializer_58:08

/bert/encoder/layer_11/attention/self/key/bias:0Assign_57:04bert/encoder/layer_11/attention/self/key/bias/read:02checkpoint_initializer_57:08

3bert/encoder/layer_11/attention/self/value/kernel:0Assign_62:08bert/encoder/layer_11/attention/self/value/kernel/read:02checkpoint_initializer_62:08

1bert/encoder/layer_11/attention/self/value/bias:0Assign_61:06bert/encoder/layer_11/attention/self/value/bias/read:02checkpoint_initializer_61:08

5bert/encoder/layer_11/attention/output/dense/kernel:0Assign_56:0:bert/encoder/layer_11/attention/output/dense/kernel/read:02checkpoint_initializer_56:08

3bert/encoder/layer_11/attention/output/dense/bias:0Assign_55:08bert/encoder/layer_11/attention/output/dense/bias/read:02checkpoint_initializer_55:08
Ł
7bert/encoder/layer_11/attention/output/LayerNorm/beta:0Assign_53:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/read:02checkpoint_initializer_53:08
Ľ
8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0Assign_54:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_54:08

1bert/encoder/layer_11/intermediate/dense/kernel:0Assign_64:06bert/encoder/layer_11/intermediate/dense/kernel/read:02checkpoint_initializer_64:08

/bert/encoder/layer_11/intermediate/dense/bias:0Assign_63:04bert/encoder/layer_11/intermediate/dense/bias/read:02checkpoint_initializer_63:08

+bert/encoder/layer_11/output/dense/kernel:0Assign_68:00bert/encoder/layer_11/output/dense/kernel/read:02checkpoint_initializer_68:08

)bert/encoder/layer_11/output/dense/bias:0Assign_67:0.bert/encoder/layer_11/output/dense/bias/read:02checkpoint_initializer_67:08

-bert/encoder/layer_11/output/LayerNorm/beta:0Assign_65:02bert/encoder/layer_11/output/LayerNorm/beta/read:02checkpoint_initializer_65:08

.bert/encoder/layer_11/output/LayerNorm/gamma:0Assign_66:03bert/encoder/layer_11/output/LayerNorm/gamma/read:02checkpoint_initializer_66:08
k
bert/pooler/dense/kernel:0Assign_198:0bert/pooler/dense/kernel/read:02checkpoint_initializer_198:08
g
bert/pooler/dense/bias:0Assign_197:0bert/pooler/dense/bias/read:02checkpoint_initializer_197:08
q
output_weights:0output_weights/Assignoutput_weights/read:02-output_weights/Initializer/truncated_normal:08
Z
output_bias:0output_bias/Assignoutput_bias/read:02output_bias/Initializer/zeros:08"%
saved_model_main_op


group_deps"Ë<
model_variablesˇ<´<
o
 bert/embeddings/LayerNorm/beta:0Assign:0%bert/embeddings/LayerNorm/beta/read:02checkpoint_initializer:08
u
!bert/embeddings/LayerNorm/gamma:0
Assign_1:0&bert/embeddings/LayerNorm/gamma/read:02checkpoint_initializer_1:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0
Assign_5:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/read:02checkpoint_initializer_5:08
Ą
7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0
Assign_6:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_6:08

,bert/encoder/layer_0/output/LayerNorm/beta:0Assign_17:01bert/encoder/layer_0/output/LayerNorm/beta/read:02checkpoint_initializer_17:08

-bert/encoder/layer_0/output/LayerNorm/gamma:0Assign_18:02bert/encoder/layer_0/output/LayerNorm/gamma/read:02checkpoint_initializer_18:08
Ą
6bert/encoder/layer_1/attention/output/LayerNorm/beta:0Assign_21:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/read:02checkpoint_initializer_21:08
Ł
7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0Assign_22:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_22:08

,bert/encoder/layer_1/output/LayerNorm/beta:0Assign_33:01bert/encoder/layer_1/output/LayerNorm/beta/read:02checkpoint_initializer_33:08

-bert/encoder/layer_1/output/LayerNorm/gamma:0Assign_34:02bert/encoder/layer_1/output/LayerNorm/gamma/read:02checkpoint_initializer_34:08
Ą
6bert/encoder/layer_2/attention/output/LayerNorm/beta:0Assign_69:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/read:02checkpoint_initializer_69:08
Ł
7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0Assign_70:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_70:08

,bert/encoder/layer_2/output/LayerNorm/beta:0Assign_81:01bert/encoder/layer_2/output/LayerNorm/beta/read:02checkpoint_initializer_81:08

-bert/encoder/layer_2/output/LayerNorm/gamma:0Assign_82:02bert/encoder/layer_2/output/LayerNorm/gamma/read:02checkpoint_initializer_82:08
Ą
6bert/encoder/layer_3/attention/output/LayerNorm/beta:0Assign_85:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/read:02checkpoint_initializer_85:08
Ł
7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0Assign_86:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_86:08

,bert/encoder/layer_3/output/LayerNorm/beta:0Assign_97:01bert/encoder/layer_3/output/LayerNorm/beta/read:02checkpoint_initializer_97:08

-bert/encoder/layer_3/output/LayerNorm/gamma:0Assign_98:02bert/encoder/layer_3/output/LayerNorm/gamma/read:02checkpoint_initializer_98:08
Ł
6bert/encoder/layer_4/attention/output/LayerNorm/beta:0Assign_101:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/read:02checkpoint_initializer_101:08
Ľ
7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0Assign_102:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_102:08

,bert/encoder/layer_4/output/LayerNorm/beta:0Assign_113:01bert/encoder/layer_4/output/LayerNorm/beta/read:02checkpoint_initializer_113:08

-bert/encoder/layer_4/output/LayerNorm/gamma:0Assign_114:02bert/encoder/layer_4/output/LayerNorm/gamma/read:02checkpoint_initializer_114:08
Ł
6bert/encoder/layer_5/attention/output/LayerNorm/beta:0Assign_117:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/read:02checkpoint_initializer_117:08
Ľ
7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0Assign_118:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_118:08

,bert/encoder/layer_5/output/LayerNorm/beta:0Assign_129:01bert/encoder/layer_5/output/LayerNorm/beta/read:02checkpoint_initializer_129:08

-bert/encoder/layer_5/output/LayerNorm/gamma:0Assign_130:02bert/encoder/layer_5/output/LayerNorm/gamma/read:02checkpoint_initializer_130:08
Ł
6bert/encoder/layer_6/attention/output/LayerNorm/beta:0Assign_133:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/read:02checkpoint_initializer_133:08
Ľ
7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0Assign_134:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_134:08

,bert/encoder/layer_6/output/LayerNorm/beta:0Assign_145:01bert/encoder/layer_6/output/LayerNorm/beta/read:02checkpoint_initializer_145:08

-bert/encoder/layer_6/output/LayerNorm/gamma:0Assign_146:02bert/encoder/layer_6/output/LayerNorm/gamma/read:02checkpoint_initializer_146:08
Ł
6bert/encoder/layer_7/attention/output/LayerNorm/beta:0Assign_149:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/read:02checkpoint_initializer_149:08
Ľ
7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0Assign_150:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_150:08

,bert/encoder/layer_7/output/LayerNorm/beta:0Assign_161:01bert/encoder/layer_7/output/LayerNorm/beta/read:02checkpoint_initializer_161:08

-bert/encoder/layer_7/output/LayerNorm/gamma:0Assign_162:02bert/encoder/layer_7/output/LayerNorm/gamma/read:02checkpoint_initializer_162:08
Ł
6bert/encoder/layer_8/attention/output/LayerNorm/beta:0Assign_165:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/read:02checkpoint_initializer_165:08
Ľ
7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0Assign_166:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_166:08

,bert/encoder/layer_8/output/LayerNorm/beta:0Assign_177:01bert/encoder/layer_8/output/LayerNorm/beta/read:02checkpoint_initializer_177:08

-bert/encoder/layer_8/output/LayerNorm/gamma:0Assign_178:02bert/encoder/layer_8/output/LayerNorm/gamma/read:02checkpoint_initializer_178:08
Ł
6bert/encoder/layer_9/attention/output/LayerNorm/beta:0Assign_181:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/read:02checkpoint_initializer_181:08
Ľ
7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0Assign_182:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_182:08

,bert/encoder/layer_9/output/LayerNorm/beta:0Assign_193:01bert/encoder/layer_9/output/LayerNorm/beta/read:02checkpoint_initializer_193:08

-bert/encoder/layer_9/output/LayerNorm/gamma:0Assign_194:02bert/encoder/layer_9/output/LayerNorm/gamma/read:02checkpoint_initializer_194:08
Ł
7bert/encoder/layer_10/attention/output/LayerNorm/beta:0Assign_37:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/read:02checkpoint_initializer_37:08
Ľ
8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0Assign_38:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_38:08

-bert/encoder/layer_10/output/LayerNorm/beta:0Assign_49:02bert/encoder/layer_10/output/LayerNorm/beta/read:02checkpoint_initializer_49:08

.bert/encoder/layer_10/output/LayerNorm/gamma:0Assign_50:03bert/encoder/layer_10/output/LayerNorm/gamma/read:02checkpoint_initializer_50:08
Ł
7bert/encoder/layer_11/attention/output/LayerNorm/beta:0Assign_53:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/read:02checkpoint_initializer_53:08
Ľ
8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0Assign_54:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_54:08

-bert/encoder/layer_11/output/LayerNorm/beta:0Assign_65:02bert/encoder/layer_11/output/LayerNorm/beta/read:02checkpoint_initializer_65:08

.bert/encoder/layer_11/output/LayerNorm/gamma:0Assign_66:03bert/encoder/layer_11/output/LayerNorm/gamma/read:02checkpoint_initializer_66:08"ěí
trainable_variablesÓíĎí
u
!bert/embeddings/word_embeddings:0
Assign_4:0&bert/embeddings/word_embeddings/read:02checkpoint_initializer_4:08

'bert/embeddings/token_type_embeddings:0
Assign_3:0,bert/embeddings/token_type_embeddings/read:02checkpoint_initializer_3:08
}
%bert/embeddings/position_embeddings:0
Assign_2:0*bert/embeddings/position_embeddings/read:02checkpoint_initializer_2:08
o
 bert/embeddings/LayerNorm/beta:0Assign:0%bert/embeddings/LayerNorm/beta/read:02checkpoint_initializer:08
u
!bert/embeddings/LayerNorm/gamma:0
Assign_1:0&bert/embeddings/LayerNorm/gamma/read:02checkpoint_initializer_1:08

2bert/encoder/layer_0/attention/self/query/kernel:0Assign_12:07bert/encoder/layer_0/attention/self/query/kernel/read:02checkpoint_initializer_12:08

0bert/encoder/layer_0/attention/self/query/bias:0Assign_11:05bert/encoder/layer_0/attention/self/query/bias/read:02checkpoint_initializer_11:08

0bert/encoder/layer_0/attention/self/key/kernel:0Assign_10:05bert/encoder/layer_0/attention/self/key/kernel/read:02checkpoint_initializer_10:08

.bert/encoder/layer_0/attention/self/key/bias:0
Assign_9:03bert/encoder/layer_0/attention/self/key/bias/read:02checkpoint_initializer_9:08

2bert/encoder/layer_0/attention/self/value/kernel:0Assign_14:07bert/encoder/layer_0/attention/self/value/kernel/read:02checkpoint_initializer_14:08

0bert/encoder/layer_0/attention/self/value/bias:0Assign_13:05bert/encoder/layer_0/attention/self/value/bias/read:02checkpoint_initializer_13:08

4bert/encoder/layer_0/attention/output/dense/kernel:0
Assign_8:09bert/encoder/layer_0/attention/output/dense/kernel/read:02checkpoint_initializer_8:08

2bert/encoder/layer_0/attention/output/dense/bias:0
Assign_7:07bert/encoder/layer_0/attention/output/dense/bias/read:02checkpoint_initializer_7:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0
Assign_5:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/read:02checkpoint_initializer_5:08
Ą
7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0
Assign_6:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_6:08

0bert/encoder/layer_0/intermediate/dense/kernel:0Assign_16:05bert/encoder/layer_0/intermediate/dense/kernel/read:02checkpoint_initializer_16:08

.bert/encoder/layer_0/intermediate/dense/bias:0Assign_15:03bert/encoder/layer_0/intermediate/dense/bias/read:02checkpoint_initializer_15:08

*bert/encoder/layer_0/output/dense/kernel:0Assign_20:0/bert/encoder/layer_0/output/dense/kernel/read:02checkpoint_initializer_20:08

(bert/encoder/layer_0/output/dense/bias:0Assign_19:0-bert/encoder/layer_0/output/dense/bias/read:02checkpoint_initializer_19:08

,bert/encoder/layer_0/output/LayerNorm/beta:0Assign_17:01bert/encoder/layer_0/output/LayerNorm/beta/read:02checkpoint_initializer_17:08

-bert/encoder/layer_0/output/LayerNorm/gamma:0Assign_18:02bert/encoder/layer_0/output/LayerNorm/gamma/read:02checkpoint_initializer_18:08

2bert/encoder/layer_1/attention/self/query/kernel:0Assign_28:07bert/encoder/layer_1/attention/self/query/kernel/read:02checkpoint_initializer_28:08

0bert/encoder/layer_1/attention/self/query/bias:0Assign_27:05bert/encoder/layer_1/attention/self/query/bias/read:02checkpoint_initializer_27:08

0bert/encoder/layer_1/attention/self/key/kernel:0Assign_26:05bert/encoder/layer_1/attention/self/key/kernel/read:02checkpoint_initializer_26:08

.bert/encoder/layer_1/attention/self/key/bias:0Assign_25:03bert/encoder/layer_1/attention/self/key/bias/read:02checkpoint_initializer_25:08

2bert/encoder/layer_1/attention/self/value/kernel:0Assign_30:07bert/encoder/layer_1/attention/self/value/kernel/read:02checkpoint_initializer_30:08

0bert/encoder/layer_1/attention/self/value/bias:0Assign_29:05bert/encoder/layer_1/attention/self/value/bias/read:02checkpoint_initializer_29:08

4bert/encoder/layer_1/attention/output/dense/kernel:0Assign_24:09bert/encoder/layer_1/attention/output/dense/kernel/read:02checkpoint_initializer_24:08

2bert/encoder/layer_1/attention/output/dense/bias:0Assign_23:07bert/encoder/layer_1/attention/output/dense/bias/read:02checkpoint_initializer_23:08
Ą
6bert/encoder/layer_1/attention/output/LayerNorm/beta:0Assign_21:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/read:02checkpoint_initializer_21:08
Ł
7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0Assign_22:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_22:08

0bert/encoder/layer_1/intermediate/dense/kernel:0Assign_32:05bert/encoder/layer_1/intermediate/dense/kernel/read:02checkpoint_initializer_32:08

.bert/encoder/layer_1/intermediate/dense/bias:0Assign_31:03bert/encoder/layer_1/intermediate/dense/bias/read:02checkpoint_initializer_31:08

*bert/encoder/layer_1/output/dense/kernel:0Assign_36:0/bert/encoder/layer_1/output/dense/kernel/read:02checkpoint_initializer_36:08

(bert/encoder/layer_1/output/dense/bias:0Assign_35:0-bert/encoder/layer_1/output/dense/bias/read:02checkpoint_initializer_35:08

,bert/encoder/layer_1/output/LayerNorm/beta:0Assign_33:01bert/encoder/layer_1/output/LayerNorm/beta/read:02checkpoint_initializer_33:08

-bert/encoder/layer_1/output/LayerNorm/gamma:0Assign_34:02bert/encoder/layer_1/output/LayerNorm/gamma/read:02checkpoint_initializer_34:08

2bert/encoder/layer_2/attention/self/query/kernel:0Assign_76:07bert/encoder/layer_2/attention/self/query/kernel/read:02checkpoint_initializer_76:08

0bert/encoder/layer_2/attention/self/query/bias:0Assign_75:05bert/encoder/layer_2/attention/self/query/bias/read:02checkpoint_initializer_75:08

0bert/encoder/layer_2/attention/self/key/kernel:0Assign_74:05bert/encoder/layer_2/attention/self/key/kernel/read:02checkpoint_initializer_74:08

.bert/encoder/layer_2/attention/self/key/bias:0Assign_73:03bert/encoder/layer_2/attention/self/key/bias/read:02checkpoint_initializer_73:08

2bert/encoder/layer_2/attention/self/value/kernel:0Assign_78:07bert/encoder/layer_2/attention/self/value/kernel/read:02checkpoint_initializer_78:08

0bert/encoder/layer_2/attention/self/value/bias:0Assign_77:05bert/encoder/layer_2/attention/self/value/bias/read:02checkpoint_initializer_77:08

4bert/encoder/layer_2/attention/output/dense/kernel:0Assign_72:09bert/encoder/layer_2/attention/output/dense/kernel/read:02checkpoint_initializer_72:08

2bert/encoder/layer_2/attention/output/dense/bias:0Assign_71:07bert/encoder/layer_2/attention/output/dense/bias/read:02checkpoint_initializer_71:08
Ą
6bert/encoder/layer_2/attention/output/LayerNorm/beta:0Assign_69:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/read:02checkpoint_initializer_69:08
Ł
7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0Assign_70:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_70:08

0bert/encoder/layer_2/intermediate/dense/kernel:0Assign_80:05bert/encoder/layer_2/intermediate/dense/kernel/read:02checkpoint_initializer_80:08

.bert/encoder/layer_2/intermediate/dense/bias:0Assign_79:03bert/encoder/layer_2/intermediate/dense/bias/read:02checkpoint_initializer_79:08

*bert/encoder/layer_2/output/dense/kernel:0Assign_84:0/bert/encoder/layer_2/output/dense/kernel/read:02checkpoint_initializer_84:08

(bert/encoder/layer_2/output/dense/bias:0Assign_83:0-bert/encoder/layer_2/output/dense/bias/read:02checkpoint_initializer_83:08

,bert/encoder/layer_2/output/LayerNorm/beta:0Assign_81:01bert/encoder/layer_2/output/LayerNorm/beta/read:02checkpoint_initializer_81:08

-bert/encoder/layer_2/output/LayerNorm/gamma:0Assign_82:02bert/encoder/layer_2/output/LayerNorm/gamma/read:02checkpoint_initializer_82:08

2bert/encoder/layer_3/attention/self/query/kernel:0Assign_92:07bert/encoder/layer_3/attention/self/query/kernel/read:02checkpoint_initializer_92:08

0bert/encoder/layer_3/attention/self/query/bias:0Assign_91:05bert/encoder/layer_3/attention/self/query/bias/read:02checkpoint_initializer_91:08

0bert/encoder/layer_3/attention/self/key/kernel:0Assign_90:05bert/encoder/layer_3/attention/self/key/kernel/read:02checkpoint_initializer_90:08

.bert/encoder/layer_3/attention/self/key/bias:0Assign_89:03bert/encoder/layer_3/attention/self/key/bias/read:02checkpoint_initializer_89:08

2bert/encoder/layer_3/attention/self/value/kernel:0Assign_94:07bert/encoder/layer_3/attention/self/value/kernel/read:02checkpoint_initializer_94:08

0bert/encoder/layer_3/attention/self/value/bias:0Assign_93:05bert/encoder/layer_3/attention/self/value/bias/read:02checkpoint_initializer_93:08

4bert/encoder/layer_3/attention/output/dense/kernel:0Assign_88:09bert/encoder/layer_3/attention/output/dense/kernel/read:02checkpoint_initializer_88:08

2bert/encoder/layer_3/attention/output/dense/bias:0Assign_87:07bert/encoder/layer_3/attention/output/dense/bias/read:02checkpoint_initializer_87:08
Ą
6bert/encoder/layer_3/attention/output/LayerNorm/beta:0Assign_85:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/read:02checkpoint_initializer_85:08
Ł
7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0Assign_86:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_86:08

0bert/encoder/layer_3/intermediate/dense/kernel:0Assign_96:05bert/encoder/layer_3/intermediate/dense/kernel/read:02checkpoint_initializer_96:08

.bert/encoder/layer_3/intermediate/dense/bias:0Assign_95:03bert/encoder/layer_3/intermediate/dense/bias/read:02checkpoint_initializer_95:08

*bert/encoder/layer_3/output/dense/kernel:0Assign_100:0/bert/encoder/layer_3/output/dense/kernel/read:02checkpoint_initializer_100:08

(bert/encoder/layer_3/output/dense/bias:0Assign_99:0-bert/encoder/layer_3/output/dense/bias/read:02checkpoint_initializer_99:08

,bert/encoder/layer_3/output/LayerNorm/beta:0Assign_97:01bert/encoder/layer_3/output/LayerNorm/beta/read:02checkpoint_initializer_97:08

-bert/encoder/layer_3/output/LayerNorm/gamma:0Assign_98:02bert/encoder/layer_3/output/LayerNorm/gamma/read:02checkpoint_initializer_98:08

2bert/encoder/layer_4/attention/self/query/kernel:0Assign_108:07bert/encoder/layer_4/attention/self/query/kernel/read:02checkpoint_initializer_108:08

0bert/encoder/layer_4/attention/self/query/bias:0Assign_107:05bert/encoder/layer_4/attention/self/query/bias/read:02checkpoint_initializer_107:08

0bert/encoder/layer_4/attention/self/key/kernel:0Assign_106:05bert/encoder/layer_4/attention/self/key/kernel/read:02checkpoint_initializer_106:08

.bert/encoder/layer_4/attention/self/key/bias:0Assign_105:03bert/encoder/layer_4/attention/self/key/bias/read:02checkpoint_initializer_105:08

2bert/encoder/layer_4/attention/self/value/kernel:0Assign_110:07bert/encoder/layer_4/attention/self/value/kernel/read:02checkpoint_initializer_110:08

0bert/encoder/layer_4/attention/self/value/bias:0Assign_109:05bert/encoder/layer_4/attention/self/value/bias/read:02checkpoint_initializer_109:08

4bert/encoder/layer_4/attention/output/dense/kernel:0Assign_104:09bert/encoder/layer_4/attention/output/dense/kernel/read:02checkpoint_initializer_104:08

2bert/encoder/layer_4/attention/output/dense/bias:0Assign_103:07bert/encoder/layer_4/attention/output/dense/bias/read:02checkpoint_initializer_103:08
Ł
6bert/encoder/layer_4/attention/output/LayerNorm/beta:0Assign_101:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/read:02checkpoint_initializer_101:08
Ľ
7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0Assign_102:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_102:08

0bert/encoder/layer_4/intermediate/dense/kernel:0Assign_112:05bert/encoder/layer_4/intermediate/dense/kernel/read:02checkpoint_initializer_112:08

.bert/encoder/layer_4/intermediate/dense/bias:0Assign_111:03bert/encoder/layer_4/intermediate/dense/bias/read:02checkpoint_initializer_111:08

*bert/encoder/layer_4/output/dense/kernel:0Assign_116:0/bert/encoder/layer_4/output/dense/kernel/read:02checkpoint_initializer_116:08

(bert/encoder/layer_4/output/dense/bias:0Assign_115:0-bert/encoder/layer_4/output/dense/bias/read:02checkpoint_initializer_115:08

,bert/encoder/layer_4/output/LayerNorm/beta:0Assign_113:01bert/encoder/layer_4/output/LayerNorm/beta/read:02checkpoint_initializer_113:08

-bert/encoder/layer_4/output/LayerNorm/gamma:0Assign_114:02bert/encoder/layer_4/output/LayerNorm/gamma/read:02checkpoint_initializer_114:08

2bert/encoder/layer_5/attention/self/query/kernel:0Assign_124:07bert/encoder/layer_5/attention/self/query/kernel/read:02checkpoint_initializer_124:08

0bert/encoder/layer_5/attention/self/query/bias:0Assign_123:05bert/encoder/layer_5/attention/self/query/bias/read:02checkpoint_initializer_123:08

0bert/encoder/layer_5/attention/self/key/kernel:0Assign_122:05bert/encoder/layer_5/attention/self/key/kernel/read:02checkpoint_initializer_122:08

.bert/encoder/layer_5/attention/self/key/bias:0Assign_121:03bert/encoder/layer_5/attention/self/key/bias/read:02checkpoint_initializer_121:08

2bert/encoder/layer_5/attention/self/value/kernel:0Assign_126:07bert/encoder/layer_5/attention/self/value/kernel/read:02checkpoint_initializer_126:08

0bert/encoder/layer_5/attention/self/value/bias:0Assign_125:05bert/encoder/layer_5/attention/self/value/bias/read:02checkpoint_initializer_125:08

4bert/encoder/layer_5/attention/output/dense/kernel:0Assign_120:09bert/encoder/layer_5/attention/output/dense/kernel/read:02checkpoint_initializer_120:08

2bert/encoder/layer_5/attention/output/dense/bias:0Assign_119:07bert/encoder/layer_5/attention/output/dense/bias/read:02checkpoint_initializer_119:08
Ł
6bert/encoder/layer_5/attention/output/LayerNorm/beta:0Assign_117:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/read:02checkpoint_initializer_117:08
Ľ
7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0Assign_118:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_118:08

0bert/encoder/layer_5/intermediate/dense/kernel:0Assign_128:05bert/encoder/layer_5/intermediate/dense/kernel/read:02checkpoint_initializer_128:08

.bert/encoder/layer_5/intermediate/dense/bias:0Assign_127:03bert/encoder/layer_5/intermediate/dense/bias/read:02checkpoint_initializer_127:08

*bert/encoder/layer_5/output/dense/kernel:0Assign_132:0/bert/encoder/layer_5/output/dense/kernel/read:02checkpoint_initializer_132:08

(bert/encoder/layer_5/output/dense/bias:0Assign_131:0-bert/encoder/layer_5/output/dense/bias/read:02checkpoint_initializer_131:08

,bert/encoder/layer_5/output/LayerNorm/beta:0Assign_129:01bert/encoder/layer_5/output/LayerNorm/beta/read:02checkpoint_initializer_129:08

-bert/encoder/layer_5/output/LayerNorm/gamma:0Assign_130:02bert/encoder/layer_5/output/LayerNorm/gamma/read:02checkpoint_initializer_130:08

2bert/encoder/layer_6/attention/self/query/kernel:0Assign_140:07bert/encoder/layer_6/attention/self/query/kernel/read:02checkpoint_initializer_140:08

0bert/encoder/layer_6/attention/self/query/bias:0Assign_139:05bert/encoder/layer_6/attention/self/query/bias/read:02checkpoint_initializer_139:08

0bert/encoder/layer_6/attention/self/key/kernel:0Assign_138:05bert/encoder/layer_6/attention/self/key/kernel/read:02checkpoint_initializer_138:08

.bert/encoder/layer_6/attention/self/key/bias:0Assign_137:03bert/encoder/layer_6/attention/self/key/bias/read:02checkpoint_initializer_137:08

2bert/encoder/layer_6/attention/self/value/kernel:0Assign_142:07bert/encoder/layer_6/attention/self/value/kernel/read:02checkpoint_initializer_142:08

0bert/encoder/layer_6/attention/self/value/bias:0Assign_141:05bert/encoder/layer_6/attention/self/value/bias/read:02checkpoint_initializer_141:08

4bert/encoder/layer_6/attention/output/dense/kernel:0Assign_136:09bert/encoder/layer_6/attention/output/dense/kernel/read:02checkpoint_initializer_136:08

2bert/encoder/layer_6/attention/output/dense/bias:0Assign_135:07bert/encoder/layer_6/attention/output/dense/bias/read:02checkpoint_initializer_135:08
Ł
6bert/encoder/layer_6/attention/output/LayerNorm/beta:0Assign_133:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/read:02checkpoint_initializer_133:08
Ľ
7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0Assign_134:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_134:08

0bert/encoder/layer_6/intermediate/dense/kernel:0Assign_144:05bert/encoder/layer_6/intermediate/dense/kernel/read:02checkpoint_initializer_144:08

.bert/encoder/layer_6/intermediate/dense/bias:0Assign_143:03bert/encoder/layer_6/intermediate/dense/bias/read:02checkpoint_initializer_143:08

*bert/encoder/layer_6/output/dense/kernel:0Assign_148:0/bert/encoder/layer_6/output/dense/kernel/read:02checkpoint_initializer_148:08

(bert/encoder/layer_6/output/dense/bias:0Assign_147:0-bert/encoder/layer_6/output/dense/bias/read:02checkpoint_initializer_147:08

,bert/encoder/layer_6/output/LayerNorm/beta:0Assign_145:01bert/encoder/layer_6/output/LayerNorm/beta/read:02checkpoint_initializer_145:08

-bert/encoder/layer_6/output/LayerNorm/gamma:0Assign_146:02bert/encoder/layer_6/output/LayerNorm/gamma/read:02checkpoint_initializer_146:08

2bert/encoder/layer_7/attention/self/query/kernel:0Assign_156:07bert/encoder/layer_7/attention/self/query/kernel/read:02checkpoint_initializer_156:08

0bert/encoder/layer_7/attention/self/query/bias:0Assign_155:05bert/encoder/layer_7/attention/self/query/bias/read:02checkpoint_initializer_155:08

0bert/encoder/layer_7/attention/self/key/kernel:0Assign_154:05bert/encoder/layer_7/attention/self/key/kernel/read:02checkpoint_initializer_154:08

.bert/encoder/layer_7/attention/self/key/bias:0Assign_153:03bert/encoder/layer_7/attention/self/key/bias/read:02checkpoint_initializer_153:08

2bert/encoder/layer_7/attention/self/value/kernel:0Assign_158:07bert/encoder/layer_7/attention/self/value/kernel/read:02checkpoint_initializer_158:08

0bert/encoder/layer_7/attention/self/value/bias:0Assign_157:05bert/encoder/layer_7/attention/self/value/bias/read:02checkpoint_initializer_157:08

4bert/encoder/layer_7/attention/output/dense/kernel:0Assign_152:09bert/encoder/layer_7/attention/output/dense/kernel/read:02checkpoint_initializer_152:08

2bert/encoder/layer_7/attention/output/dense/bias:0Assign_151:07bert/encoder/layer_7/attention/output/dense/bias/read:02checkpoint_initializer_151:08
Ł
6bert/encoder/layer_7/attention/output/LayerNorm/beta:0Assign_149:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/read:02checkpoint_initializer_149:08
Ľ
7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0Assign_150:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_150:08

0bert/encoder/layer_7/intermediate/dense/kernel:0Assign_160:05bert/encoder/layer_7/intermediate/dense/kernel/read:02checkpoint_initializer_160:08

.bert/encoder/layer_7/intermediate/dense/bias:0Assign_159:03bert/encoder/layer_7/intermediate/dense/bias/read:02checkpoint_initializer_159:08

*bert/encoder/layer_7/output/dense/kernel:0Assign_164:0/bert/encoder/layer_7/output/dense/kernel/read:02checkpoint_initializer_164:08

(bert/encoder/layer_7/output/dense/bias:0Assign_163:0-bert/encoder/layer_7/output/dense/bias/read:02checkpoint_initializer_163:08

,bert/encoder/layer_7/output/LayerNorm/beta:0Assign_161:01bert/encoder/layer_7/output/LayerNorm/beta/read:02checkpoint_initializer_161:08

-bert/encoder/layer_7/output/LayerNorm/gamma:0Assign_162:02bert/encoder/layer_7/output/LayerNorm/gamma/read:02checkpoint_initializer_162:08

2bert/encoder/layer_8/attention/self/query/kernel:0Assign_172:07bert/encoder/layer_8/attention/self/query/kernel/read:02checkpoint_initializer_172:08

0bert/encoder/layer_8/attention/self/query/bias:0Assign_171:05bert/encoder/layer_8/attention/self/query/bias/read:02checkpoint_initializer_171:08

0bert/encoder/layer_8/attention/self/key/kernel:0Assign_170:05bert/encoder/layer_8/attention/self/key/kernel/read:02checkpoint_initializer_170:08

.bert/encoder/layer_8/attention/self/key/bias:0Assign_169:03bert/encoder/layer_8/attention/self/key/bias/read:02checkpoint_initializer_169:08

2bert/encoder/layer_8/attention/self/value/kernel:0Assign_174:07bert/encoder/layer_8/attention/self/value/kernel/read:02checkpoint_initializer_174:08

0bert/encoder/layer_8/attention/self/value/bias:0Assign_173:05bert/encoder/layer_8/attention/self/value/bias/read:02checkpoint_initializer_173:08

4bert/encoder/layer_8/attention/output/dense/kernel:0Assign_168:09bert/encoder/layer_8/attention/output/dense/kernel/read:02checkpoint_initializer_168:08

2bert/encoder/layer_8/attention/output/dense/bias:0Assign_167:07bert/encoder/layer_8/attention/output/dense/bias/read:02checkpoint_initializer_167:08
Ł
6bert/encoder/layer_8/attention/output/LayerNorm/beta:0Assign_165:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/read:02checkpoint_initializer_165:08
Ľ
7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0Assign_166:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_166:08

0bert/encoder/layer_8/intermediate/dense/kernel:0Assign_176:05bert/encoder/layer_8/intermediate/dense/kernel/read:02checkpoint_initializer_176:08

.bert/encoder/layer_8/intermediate/dense/bias:0Assign_175:03bert/encoder/layer_8/intermediate/dense/bias/read:02checkpoint_initializer_175:08

*bert/encoder/layer_8/output/dense/kernel:0Assign_180:0/bert/encoder/layer_8/output/dense/kernel/read:02checkpoint_initializer_180:08

(bert/encoder/layer_8/output/dense/bias:0Assign_179:0-bert/encoder/layer_8/output/dense/bias/read:02checkpoint_initializer_179:08

,bert/encoder/layer_8/output/LayerNorm/beta:0Assign_177:01bert/encoder/layer_8/output/LayerNorm/beta/read:02checkpoint_initializer_177:08

-bert/encoder/layer_8/output/LayerNorm/gamma:0Assign_178:02bert/encoder/layer_8/output/LayerNorm/gamma/read:02checkpoint_initializer_178:08

2bert/encoder/layer_9/attention/self/query/kernel:0Assign_188:07bert/encoder/layer_9/attention/self/query/kernel/read:02checkpoint_initializer_188:08

0bert/encoder/layer_9/attention/self/query/bias:0Assign_187:05bert/encoder/layer_9/attention/self/query/bias/read:02checkpoint_initializer_187:08

0bert/encoder/layer_9/attention/self/key/kernel:0Assign_186:05bert/encoder/layer_9/attention/self/key/kernel/read:02checkpoint_initializer_186:08

.bert/encoder/layer_9/attention/self/key/bias:0Assign_185:03bert/encoder/layer_9/attention/self/key/bias/read:02checkpoint_initializer_185:08

2bert/encoder/layer_9/attention/self/value/kernel:0Assign_190:07bert/encoder/layer_9/attention/self/value/kernel/read:02checkpoint_initializer_190:08

0bert/encoder/layer_9/attention/self/value/bias:0Assign_189:05bert/encoder/layer_9/attention/self/value/bias/read:02checkpoint_initializer_189:08

4bert/encoder/layer_9/attention/output/dense/kernel:0Assign_184:09bert/encoder/layer_9/attention/output/dense/kernel/read:02checkpoint_initializer_184:08

2bert/encoder/layer_9/attention/output/dense/bias:0Assign_183:07bert/encoder/layer_9/attention/output/dense/bias/read:02checkpoint_initializer_183:08
Ł
6bert/encoder/layer_9/attention/output/LayerNorm/beta:0Assign_181:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/read:02checkpoint_initializer_181:08
Ľ
7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0Assign_182:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_182:08

0bert/encoder/layer_9/intermediate/dense/kernel:0Assign_192:05bert/encoder/layer_9/intermediate/dense/kernel/read:02checkpoint_initializer_192:08

.bert/encoder/layer_9/intermediate/dense/bias:0Assign_191:03bert/encoder/layer_9/intermediate/dense/bias/read:02checkpoint_initializer_191:08

*bert/encoder/layer_9/output/dense/kernel:0Assign_196:0/bert/encoder/layer_9/output/dense/kernel/read:02checkpoint_initializer_196:08

(bert/encoder/layer_9/output/dense/bias:0Assign_195:0-bert/encoder/layer_9/output/dense/bias/read:02checkpoint_initializer_195:08

,bert/encoder/layer_9/output/LayerNorm/beta:0Assign_193:01bert/encoder/layer_9/output/LayerNorm/beta/read:02checkpoint_initializer_193:08

-bert/encoder/layer_9/output/LayerNorm/gamma:0Assign_194:02bert/encoder/layer_9/output/LayerNorm/gamma/read:02checkpoint_initializer_194:08

3bert/encoder/layer_10/attention/self/query/kernel:0Assign_44:08bert/encoder/layer_10/attention/self/query/kernel/read:02checkpoint_initializer_44:08

1bert/encoder/layer_10/attention/self/query/bias:0Assign_43:06bert/encoder/layer_10/attention/self/query/bias/read:02checkpoint_initializer_43:08

1bert/encoder/layer_10/attention/self/key/kernel:0Assign_42:06bert/encoder/layer_10/attention/self/key/kernel/read:02checkpoint_initializer_42:08

/bert/encoder/layer_10/attention/self/key/bias:0Assign_41:04bert/encoder/layer_10/attention/self/key/bias/read:02checkpoint_initializer_41:08

3bert/encoder/layer_10/attention/self/value/kernel:0Assign_46:08bert/encoder/layer_10/attention/self/value/kernel/read:02checkpoint_initializer_46:08

1bert/encoder/layer_10/attention/self/value/bias:0Assign_45:06bert/encoder/layer_10/attention/self/value/bias/read:02checkpoint_initializer_45:08

5bert/encoder/layer_10/attention/output/dense/kernel:0Assign_40:0:bert/encoder/layer_10/attention/output/dense/kernel/read:02checkpoint_initializer_40:08

3bert/encoder/layer_10/attention/output/dense/bias:0Assign_39:08bert/encoder/layer_10/attention/output/dense/bias/read:02checkpoint_initializer_39:08
Ł
7bert/encoder/layer_10/attention/output/LayerNorm/beta:0Assign_37:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/read:02checkpoint_initializer_37:08
Ľ
8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0Assign_38:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_38:08

1bert/encoder/layer_10/intermediate/dense/kernel:0Assign_48:06bert/encoder/layer_10/intermediate/dense/kernel/read:02checkpoint_initializer_48:08

/bert/encoder/layer_10/intermediate/dense/bias:0Assign_47:04bert/encoder/layer_10/intermediate/dense/bias/read:02checkpoint_initializer_47:08

+bert/encoder/layer_10/output/dense/kernel:0Assign_52:00bert/encoder/layer_10/output/dense/kernel/read:02checkpoint_initializer_52:08

)bert/encoder/layer_10/output/dense/bias:0Assign_51:0.bert/encoder/layer_10/output/dense/bias/read:02checkpoint_initializer_51:08

-bert/encoder/layer_10/output/LayerNorm/beta:0Assign_49:02bert/encoder/layer_10/output/LayerNorm/beta/read:02checkpoint_initializer_49:08

.bert/encoder/layer_10/output/LayerNorm/gamma:0Assign_50:03bert/encoder/layer_10/output/LayerNorm/gamma/read:02checkpoint_initializer_50:08

3bert/encoder/layer_11/attention/self/query/kernel:0Assign_60:08bert/encoder/layer_11/attention/self/query/kernel/read:02checkpoint_initializer_60:08

1bert/encoder/layer_11/attention/self/query/bias:0Assign_59:06bert/encoder/layer_11/attention/self/query/bias/read:02checkpoint_initializer_59:08

1bert/encoder/layer_11/attention/self/key/kernel:0Assign_58:06bert/encoder/layer_11/attention/self/key/kernel/read:02checkpoint_initializer_58:08

/bert/encoder/layer_11/attention/self/key/bias:0Assign_57:04bert/encoder/layer_11/attention/self/key/bias/read:02checkpoint_initializer_57:08

3bert/encoder/layer_11/attention/self/value/kernel:0Assign_62:08bert/encoder/layer_11/attention/self/value/kernel/read:02checkpoint_initializer_62:08

1bert/encoder/layer_11/attention/self/value/bias:0Assign_61:06bert/encoder/layer_11/attention/self/value/bias/read:02checkpoint_initializer_61:08

5bert/encoder/layer_11/attention/output/dense/kernel:0Assign_56:0:bert/encoder/layer_11/attention/output/dense/kernel/read:02checkpoint_initializer_56:08

3bert/encoder/layer_11/attention/output/dense/bias:0Assign_55:08bert/encoder/layer_11/attention/output/dense/bias/read:02checkpoint_initializer_55:08
Ł
7bert/encoder/layer_11/attention/output/LayerNorm/beta:0Assign_53:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/read:02checkpoint_initializer_53:08
Ľ
8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0Assign_54:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_54:08

1bert/encoder/layer_11/intermediate/dense/kernel:0Assign_64:06bert/encoder/layer_11/intermediate/dense/kernel/read:02checkpoint_initializer_64:08

/bert/encoder/layer_11/intermediate/dense/bias:0Assign_63:04bert/encoder/layer_11/intermediate/dense/bias/read:02checkpoint_initializer_63:08

+bert/encoder/layer_11/output/dense/kernel:0Assign_68:00bert/encoder/layer_11/output/dense/kernel/read:02checkpoint_initializer_68:08

)bert/encoder/layer_11/output/dense/bias:0Assign_67:0.bert/encoder/layer_11/output/dense/bias/read:02checkpoint_initializer_67:08

-bert/encoder/layer_11/output/LayerNorm/beta:0Assign_65:02bert/encoder/layer_11/output/LayerNorm/beta/read:02checkpoint_initializer_65:08

.bert/encoder/layer_11/output/LayerNorm/gamma:0Assign_66:03bert/encoder/layer_11/output/LayerNorm/gamma/read:02checkpoint_initializer_66:08
k
bert/pooler/dense/kernel:0Assign_198:0bert/pooler/dense/kernel/read:02checkpoint_initializer_198:08
g
bert/pooler/dense/bias:0Assign_197:0bert/pooler/dense/bias/read:02checkpoint_initializer_197:08
q
output_weights:0output_weights/Assignoutput_weights/read:02-output_weights/Initializer/truncated_normal:08
Z
output_bias:0output_bias/Assignoutput_bias/read:02output_bias/Initializer/zeros:08*š
serving_defaultĽ
6
segment_ids'
segment_ids_1:0˙˙˙˙˙˙˙˙˙
4

input_mask&
input_mask_1:0˙˙˙˙˙˙˙˙˙
2
	input_ids%
input_ids_1:0˙˙˙˙˙˙˙˙˙
-
	label_ids 
label_ids_1:0˙˙˙˙˙˙˙˙˙6
probabilities%
loss/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict