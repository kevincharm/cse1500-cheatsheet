# Selectors

## Descendant

```css
main h1 {
    background-color: red;
}
```

This matches any `h1` element that is a child, grandchild, great grandchild, etc of any `main` element.

```html
<main>
    <h1>
        <!-- Matches, this h1 will have a red background -->
        Kevin loves croissants!
    </h1>
</main>

<main>
    <article>
        <h1>
            <!-- Matches, this h1 will have a red background -->
            Kevin loves croissants!
        </h1>
    </article>
</main>
```

## Child

```css
main > h1 {
    background-color: red;
}
```

This matches any `h1` element that is a direct child of any `main` element.

```html
<main>
    <h1>
        <!-- Matches, this h1 will have a red background -->
        Kevin loves croissants!
    </h1>
</main>

<main>
    <article>
        <h1>
            <!-- Does not match, this h1 will not have a red background -->
            Kevin loves croissants!
        </h1>
    </article>
</main>
```

## Multiple Selectors

Don't get this confused with the other two. The key here is the comma.

```css
main, h1 {
    background-color: red;
}
```

This matches any element that is a `main` or a `h1`.

```html
<main>
    <h1>
        <!-- Matches, this h1 will have a red background -->
        Kevin loves croissants!
    </h1>
</main>

<main>
    <article>
        <h1>
            <!-- Matches, this h1 will have a red background -->
            Kevin loves croissants!
        </h1>
    </article>
</main>

<h1>
    <!-- Matches, this h1 will have a red background -->
    Kevin loves croissants!
</h1>
```
