.class public Lcom/twitter/android/moments/ui/fullscreen/bs;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<TK;TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/util/y",
            "<TT;>;",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<TK;TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/twitter/util/x;

    invoke-direct {v0}, Lcom/twitter/util/x;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->a:Lcom/twitter/util/x;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->b:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<TK;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->a:Lcom/twitter/util/x;

    invoke-virtual {v0, p1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 35
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/twitter/util/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/twitter/util/y",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/bt;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/bt;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bs;Ljava/lang/Object;Lcom/twitter/util/y;)V

    .line 52
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->a:Lcom/twitter/util/x;

    invoke-virtual {v1, v0}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 53
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->a:Lcom/twitter/util/x;

    invoke-static {p1, p2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public b(Lcom/twitter/util/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/y",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->a:Lcom/twitter/util/x;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/y;

    invoke-virtual {v1, v0}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 59
    return-void
.end method

.method public c(Lcom/twitter/util/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<TK;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bs;->a:Lcom/twitter/util/x;

    invoke-virtual {v0, p1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 63
    return-void
.end method
