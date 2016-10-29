.class Lcom/twitter/library/api/upload/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/ap;
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/ap;",
        "Lrx/p",
        "<",
        "Lcom/twitter/library/api/upload/ab;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/api/upload/i;

.field private final b:Lcom/twitter/media/model/MediaFile;

.field private final c:Lcom/twitter/library/api/upload/MediaUsage;

.field private d:Lcom/twitter/util/concurrent/ObservablePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/concurrent/ObservablePromise",
            "<",
            "Lcom/twitter/library/api/upload/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/library/api/upload/i;Lcom/twitter/media/model/MediaFile;Lcom/twitter/library/api/upload/MediaUsage;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/twitter/library/api/upload/x;->a:Lcom/twitter/library/api/upload/i;

    .line 128
    iput-object p2, p0, Lcom/twitter/library/api/upload/x;->b:Lcom/twitter/media/model/MediaFile;

    .line 129
    iput-object p3, p0, Lcom/twitter/library/api/upload/x;->c:Lcom/twitter/library/api/upload/MediaUsage;

    .line 130
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/library/api/upload/x;->d:Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/concurrent/ObservablePromise;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/ObservablePromise;->cancel(Z)Z

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/api/upload/x;->d:Lcom/twitter/util/concurrent/ObservablePromise;

    .line 167
    return-void
.end method

.method public a(Lrx/ao;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Lcom/twitter/library/api/upload/ab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/library/api/upload/x;->a:Lcom/twitter/library/api/upload/i;

    iget-object v1, p0, Lcom/twitter/library/api/upload/x;->b:Lcom/twitter/media/model/MediaFile;

    .line 135
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/twitter/library/api/upload/y;

    invoke-direct {v3, p0, p1}, Lcom/twitter/library/api/upload/y;-><init>(Lcom/twitter/library/api/upload/x;Lrx/ao;)V

    iget-object v4, p0, Lcom/twitter/library/api/upload/x;->c:Lcom/twitter/library/api/upload/MediaUsage;

    .line 134
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/api/upload/i;->a(Lcom/twitter/media/model/MediaFile;Ljava/util/List;Lcom/twitter/util/y;Lcom/twitter/library/api/upload/MediaUsage;)Lcom/twitter/library/api/upload/l;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/upload/x;->d:Lcom/twitter/util/concurrent/ObservablePromise;

    .line 143
    iget-object v0, p0, Lcom/twitter/library/api/upload/x;->d:Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/concurrent/ObservablePromise;

    new-instance v1, Lcom/twitter/library/api/upload/z;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/api/upload/z;-><init>(Lcom/twitter/library/api/upload/x;Lrx/ao;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/ObservablePromise;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 152
    iget-object v0, p0, Lcom/twitter/library/api/upload/x;->d:Lcom/twitter/util/concurrent/ObservablePromise;

    new-instance v1, Lcom/twitter/library/api/upload/aa;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/api/upload/aa;-><init>(Lcom/twitter/library/api/upload/x;Lrx/ao;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/ObservablePromise;->c(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 160
    invoke-virtual {p1, p0}, Lrx/ao;->a(Lrx/ap;)V

    .line 161
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/twitter/library/api/upload/x;->d:Lcom/twitter/util/concurrent/ObservablePromise;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/x;->a(Lrx/ao;)V

    return-void
.end method
