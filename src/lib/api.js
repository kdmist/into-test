export async function getArticles() {
    const res = await fetch('${import.meta.env.VITE_API_URL=http://localhost:1337}/api/articles');
    if (!res.ok){
        throw new Error('Failed to fetch articles');
    }
    return res.json();
    
}