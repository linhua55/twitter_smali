.class Lcom/twitter/android/card/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field final synthetic b:Lcom/twitter/android/card/CardPreviewControllerImpl;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/CardPreviewControllerImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/twitter/android/card/t;->b:Lcom/twitter/android/card/CardPreviewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/twitter/android/card/t;->c:Ljava/lang/String;

    .line 459
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/twitter/android/card/t;->b:Lcom/twitter/android/card/CardPreviewControllerImpl;

    invoke-static {v0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Lcom/twitter/android/card/CardPreviewControllerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/o;

    .line 464
    iget-boolean v1, p0, Lcom/twitter/android/card/t;->a:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/twitter/android/card/t;->b:Lcom/twitter/android/card/CardPreviewControllerImpl;

    iget-object v1, p0, Lcom/twitter/android/card/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardPreviewControllerImpl;->c(Ljava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method
