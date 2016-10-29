.class Lcom/twitter/app/common/list/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/app/common/list/f",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/twitter/app/common/list/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/list/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/i;->a:Ljava/lang/ref/WeakReference;

    .line 274
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/list/f;Lcom/twitter/app/common/list/g;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/i;-><init>(Lcom/twitter/app/common/list/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/twitter/app/common/list/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/f;

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-static {v0}, Lcom/twitter/app/common/list/f;->a(Lcom/twitter/app/common/list/f;)V

    .line 283
    :cond_0
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
