.class public Lcom/twitter/android/initialization/EventReporterInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/EventReporterInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/library/scribe/ba;

    invoke-direct {v0, p1}, Lcom/twitter/library/scribe/ba;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lbjf;->a(Lbjg;)V

    .line 21
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    .line 23
    new-instance v2, Lcfx;

    invoke-direct {v2, p1, v0, v1}, Lcfx;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;)V

    invoke-static {v2}, Lbjf;->a(Lbjg;)V

    .line 24
    return-void
.end method
