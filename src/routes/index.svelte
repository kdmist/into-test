// src/routes/index.svelte
<script context="module">
  export async function load({ fetch }) {
    const res = await fetch(`${import.meta.env.VITE_API_URL=http://localhost:1337}/api/articles`);
    const articles = await res.json();
    return { articles };
  }
</script>

<script>
  export let articles;
</script>

<template>
  <div>
    {#each articles.data as article}
      <h2>{article.attributes.title}</h2>
      <p>{article.attributes.content}</p>
    {/each}
  </div>
</template>
