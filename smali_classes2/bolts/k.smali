.class Lbolts/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/m;

.field final synthetic b:Lbolts/g;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/h;Lbolts/m;Lbolts/g;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lbolts/k;->d:Lbolts/h;

    iput-object p2, p0, Lbolts/k;->a:Lbolts/m;

    iput-object p3, p0, Lbolts/k;->b:Lbolts/g;

    iput-object p4, p0, Lbolts/k;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbolts/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lbolts/k;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lbolts/k;->a:Lbolts/m;

    iget-object v1, p0, Lbolts/k;->b:Lbolts/g;

    iget-object v2, p0, Lbolts/k;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/h;->a(Lbolts/m;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method
