import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController 
{
   public ModelAndView indexPage()
   {
	   ModelAndView m1=new ModelAndView("hello");
	   return m1;
   }
}
