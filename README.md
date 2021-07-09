# custom_page_route

A cutom animation for page route.

## Getting Started

** CustomPageRoute class constructor  **

```
CustomPageRoute({
    required Widget child,
    AxisDirection axisDirection = AxisDirection.right,
    Duration transitionDuration = const Duration(milliseconds: 500), 
    Duration reverseTransitionDuration = const Duration(milliseconds: 500)
    })
```

Example,

```
 Navigator.push(
            context,
            CustomPageRoute(
            axisDirection: AxisDirection.left,
            child: Page1(),
        ),
    );

```






