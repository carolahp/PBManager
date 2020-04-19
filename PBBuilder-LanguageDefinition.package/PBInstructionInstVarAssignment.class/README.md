I am used to set the value of an instance variable of a remote class (accessed by an EPMirror).
The set object is a remote object built from a local object.

className :: the name or role of the class in the language definition
instVarName :: the name of the instance variable in the class referred by className
localObject :: a local object, for example: #() , { 1 -> #a . 2 -> #b } asDictionary, etc.
