.class public Lcom/twitter/android/initialization/JobCreatorInitializer;
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
    .line 24
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/JobCreatorInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 27
    invoke-static {p1}, Lcom/evernote/android/job/h;->a(Landroid/content/Context;)Lcom/evernote/android/job/h;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/initialization/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/twitter/android/initialization/k;-><init>(Lcom/twitter/android/initialization/j;)V

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/h;->a(Lcom/evernote/android/job/c;)V

    .line 28
    return-void
.end method
