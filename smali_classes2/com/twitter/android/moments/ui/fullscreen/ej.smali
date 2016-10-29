.class Lcom/twitter/android/moments/ui/fullscreen/ej;
.super Lcom/twitter/app/common/util/i;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ei;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ei;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ej;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-direct {p0}, Lcom/twitter/app/common/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ej;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->a(Lcom/twitter/android/moments/ui/fullscreen/ei;)V

    .line 72
    return-void
.end method
