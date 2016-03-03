#include "PolycodeTemplateApp.h"
#include "polycode/view/linux/PolycodeView.h"

int main(int argc, char **argv) {
	PolycodeView *view = new PolycodeView("Polycode Template");
	PolycodeTemplateApp *app = new PolycodeTemplateApp(view);
	while(app->Update()) {
	}
	return 0;
}
