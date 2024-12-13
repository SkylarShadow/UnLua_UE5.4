---@class AGeometryCollectionDebugDrawActor : AActor
---@field public bDebugDrawWholeCollection boolean @Show debug visualization for the rest of the geometry collection related to the current rigid body id selection.
---@field public bDebugDrawHierarchy boolean @Show debug visualization for the top level node rather than the bottom leaf nodes of a cluster's hierarchy. * Only affects Clustering and Geometry visualization.
---@field public bDebugDrawClustering boolean @Show debug visualization for all clustered children associated to the current rigid body id selection.
---@field public HideGeometry EGeometryCollectionDebugDrawActorHideGeometry @Geometry visibility setting. Select the part of the geometry to hide in order to better visualize the debug information.
---@field public bShowRigidBodyId boolean @Display the selected rigid body's id.
---@field public bShowRigidBodyCollision boolean @Show the selected rigid body's collision volume.
---@field public bCollisionAtOrigin boolean @Show the selected rigid body's collision volume at the origin, in local space.
---@field public bShowRigidBodyTransform boolean @Show the selected rigid body's transform.
---@field public bShowRigidBodyInertia boolean @Show the selected rigid body's inertia tensor box.
---@field public bShowRigidBodyVelocity boolean @Show the selected rigid body's linear and angular velocity.
---@field public bShowRigidBodyForce boolean @Show the selected rigid body's applied force and torque.
---@field public bShowRigidBodyInfos boolean @Show the selected rigid body's on screen text information.
---@field public bShowTransformIndex boolean @Show the transform index for the selected rigid body's associated cluster nodes.
---@field public bShowTransform boolean @Show the transform for the selected rigid body's associated cluster nodes.
---@field public bShowParent boolean @Show a link from the selected rigid body's associated cluster nodes to their parent's nodes.
---@field public bShowLevel boolean @Show the hierarchical level for the selected rigid body's associated cluster nodes.
---@field public bShowConnectivityEdges boolean @Show the connectivity edges for the selected rigid body's associated cluster nodes.
---@field public bShowGeometryIndex boolean @Show the geometry index for the selected rigid body's associated geometries.
---@field public bShowGeometryTransform boolean @Show the geometry transform for the selected rigid body's associated geometries.
---@field public bShowBoundingBox boolean @Show the bounding box for the selected rigid body's associated geometries.
---@field public bShowFaces boolean @Show the faces for the selected rigid body's associated geometries.
---@field public bShowFaceIndices boolean @Show the face indices for the selected rigid body's associated geometries.
---@field public bShowFaceNormals boolean @Show the face normals for the selected rigid body's associated geometries.
---@field public bShowSingleFace boolean @Enable single face visualization for the selected rigid body's associated geometries.
---@field public SingleFaceIndex integer @The index of the single face to visualize.
---@field public bShowVertices boolean @Show the vertices for the selected rigid body's associated geometries.
---@field public bShowVertexIndices boolean @Show the vertex indices for the selected rigid body's associated geometries.
---@field public bShowVertexNormals boolean @Show the vertex normals for the selected rigid body's associated geometries.
---@field public bUseActiveVisualization boolean @Adapt visualization depending of the cluster nodes' hierarchical level.
---@field public PointThickness number @Thickness of points when visualizing vertices.
---@field public LineThickness number @Thickness of lines when visualizing faces, normals, ...etc.
---@field public bTextShadow boolean @Draw shadows under the displayed text.
---@field public TextScale number @Scale of the font used to display text.
---@field public NormalScale number @Scale factor used for visualizing normals.
---@field public AxisScale number @Scale of the axis used for visualizing all transforms.
---@field public ArrowScale number @Size of arrows used for visualizing normals, breaking information, ...etc.
---@field public RigidBodyIdColor FColor @Color used for the visualization of the rigid body ids.
---@field public RigidBodyTransformScale number @Scale for rigid body transform visualization.
---@field public RigidBodyCollisionColor FColor @Color used for collision primitives visualization.
---@field public RigidBodyInertiaColor FColor @Color used for the visualization of the rigid body inertia tensor box.
---@field public RigidBodyVelocityColor FColor @Color used for rigid body velocities visualization.
---@field public RigidBodyForceColor FColor @Color used for rigid body applied force and torque visualization.
---@field public RigidBodyInfoColor FColor @Color used for the visualization of the rigid body infos.
---@field public TransformIndexColor FColor @Color used for the visualization of the transform indices.
---@field public TransformScale number @Scale for cluster transform visualization.
---@field public LevelColor FColor @Color used for the visualization of the levels.
---@field public ParentColor FColor @Color used for the visualization of the link from the parents.
---@field public ConnectivityEdgeThickness number @Line thickness used for the visualization of the rigid clustering connectivity edges.
---@field public GeometryIndexColor FColor @Color used for the visualization of the geometry indices.
---@field public GeometryTransformScale number @Scale for geometry transform visualization.
---@field public BoundingBoxColor FColor @Color used for the visualization of the bounding boxes.
---@field public FaceColor FColor @Color used for the visualization of the faces.
---@field public FaceIndexColor FColor @Color used for the visualization of the face indices.
---@field public FaceNormalColor FColor @Color used for the visualization of the face normals.
---@field public SingleFaceColor FColor @Color used for the visualization of the single face.
---@field public VertexColor FColor @Color used for the visualization of the vertices.
---@field public VertexIndexColor FColor @Color used for the visualization of the vertex indices.
---@field public VertexNormalColor FColor @Color used for the visualization of the vertex normals.
---@field public SpriteComponent UBillboardComponent @Display icon in the editor.
local AGeometryCollectionDebugDrawActor = {}

