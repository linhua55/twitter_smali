.class Lcom/twitter/android/moments/ui/fullscreen/fq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Landroid/view/ViewGroup;",
        "Lcom/twitter/android/moments/ui/fullscreen/dj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/fp;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/fp;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/fq;->a:Lcom/twitter/android/moments/ui/fullscreen/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/fullscreen/dj;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fq;->a:Lcom/twitter/android/moments/ui/fullscreen/fp;

    .line 57
    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/fp;->a(Lcom/twitter/android/moments/ui/fullscreen/fp;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/dj;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/fullscreen/dj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/fq;->a(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/fullscreen/dj;

    move-result-object v0

    return-object v0
.end method
