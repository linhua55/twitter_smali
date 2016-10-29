.class Lcom/twitter/android/moments/ui/fullscreen/do;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/dn;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/dn;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/do;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/do;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->a(Lcom/twitter/android/moments/ui/fullscreen/dn;)Lcom/twitter/android/moments/ui/fullscreen/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cj;->b()V

    .line 73
    return-void
.end method
