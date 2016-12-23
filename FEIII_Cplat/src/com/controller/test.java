package com.controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

//import com.cplat.controller.DataController;

import com.cplat.controller.DataController;




@Path("/test")
public class test {
	@Path("{query}")
	@GET
	@Produces("application/json")
	public Response GetJson(@PathParam("query") String zuba_query){
				
		DataController D = new DataController();
		return D.generateJson(zuba_query);
    		
    		//return Response.status(200).entity(jsonArray1.toString()).build();
    		
    		//return Response.status(200).entity("Hello").build();
		
		//return Response.status(200).entity("").build();
	}
}
