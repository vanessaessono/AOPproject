
public aspect TraceAspectEssono {
	pointcut classToTrace(): within(*App);
	pointcut methodToTrace(): within(*App);
	
	before(): methodToTrace()
	{
		String info = thisJoinPointStaticPart.getSignature() + ", " 
				+ thisJoinPointStaticPart.getSourceLocation().getLine() + ", ";
		
		System.out.println("\t-->" + info);
	}
	
	after(): methodToTrace()
	{
		System.out.println("\t<--" + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}
