require './config/environment'

use Rack::MethodOverride
use BoardController
use MessageController
use UserController
run ApplicationController
