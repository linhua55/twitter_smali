.class Lcom/twitter/library/media/manager/ah;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/library/media/manager/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/library/media/manager/t;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/t;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    const-class v0, Lcom/twitter/library/media/manager/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 1022
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->c:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/ah;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 1023
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/ah;->a:Ljava/lang/ref/WeakReference;

    .line 1024
    iput-object p2, p0, Lcom/twitter/library/media/manager/ah;->b:Ljava/util/Collection;

    .line 1025
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/twitter/library/media/manager/ah;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/t;

    .line 1030
    if-eqz v0, :cond_2

    .line 1032
    :try_start_0
    iget-object v1, v0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    .line 1033
    iget-object v2, v0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    .line 1034
    iget-object v0, p0, Lcom/twitter/library/media/manager/ah;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1035
    if-eqz v0, :cond_0

    .line 1036
    if-eqz v1, :cond_1

    .line 1037
    invoke-interface {v1, v0}, Lcom/twitter/util/collection/q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    :cond_1
    if-eqz v2, :cond_0

    .line 1040
    invoke-virtual {v2, v0}, Ldbd;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1048
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/ah;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/ah;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
