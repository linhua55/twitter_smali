.class Lcom/twitter/android/moments/ui/fullscreen/hz;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# instance fields
.field final a:Lcom/twitter/model/moments/ak;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/hy;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hy;Landroid/content/Context;Lcom/twitter/model/moments/ak;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hz;->b:Lcom/twitter/android/moments/ui/fullscreen/hy;

    .line 70
    const-class v0, Lcom/twitter/android/moments/ui/fullscreen/hz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/hz;->a:Lcom/twitter/model/moments/ak;

    .line 72
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hz;->b:Lcom/twitter/android/moments/ui/fullscreen/hy;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hy;->b(Lcom/twitter/android/moments/ui/fullscreen/hy;)Lcet;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hz;->b:Lcom/twitter/android/moments/ui/fullscreen/hy;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/hy;->a(Lcom/twitter/android/moments/ui/fullscreen/hy;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/hz;->a:Lcom/twitter/model/moments/ak;

    .line 77
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v4

    invoke-interface {v4}, Lcom/twitter/platform/u;->a()J

    move-result-wide v4

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcet;->a(JLcom/twitter/model/moments/ak;J)V

    .line 78
    return-void
.end method
