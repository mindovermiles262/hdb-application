/** Here we can define any JavaScript-based resources and extensions to tables

export class MyCustomResource extends tables.TableName {
	// we can define our own custom POST handler
	post(content) {
		// do something with the incoming content;
		return super.post(content);
	}
	// or custom GET handler
	get() {
		// we can modify this resource before returning
		return super.get();
	}
}
 */
// we can also define a custom resource without a specific table
export class healthz extends Resource {
	get() {
		return { "status": 200, "message": "ok" };
	}
}