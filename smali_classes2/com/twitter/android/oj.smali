.class Lcom/twitter/android/oj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/op;


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchFragment;

.field final synthetic b:Lcom/twitter/android/oi;


# direct methods
.method constructor <init>(Lcom/twitter/android/oi;Lcom/twitter/android/SearchFragment;)V
    .locals 0

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/twitter/android/oj;->b:Lcom/twitter/android/oi;

    iput-object p2, p0, Lcom/twitter/android/oj;->a:Lcom/twitter/android/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/twitter/android/oj;->a:Lcom/twitter/android/SearchFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/SearchFragment;->a(Lcom/twitter/android/op;)V

    .line 1544
    iget-object v0, p0, Lcom/twitter/android/oj;->b:Lcom/twitter/android/oi;

    iget-object v0, v0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    iget-object v1, p0, Lcom/twitter/android/oj;->a:Lcom/twitter/android/SearchFragment;

    invoke-static {v0, v1}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/android/SearchActivity;Lcom/twitter/android/SearchFragment;)V

    .line 1545
    return-void
.end method
