.class final Lazg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcoj;


# direct methods
.method constructor <init>(Landroid/content/Context;JLcoj;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lazg;->a:Landroid/content/Context;

    iput-wide p2, p0, Lazg;->b:J

    iput-object p4, p0, Lazg;->c:Lcoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lazg;->a:Landroid/content/Context;

    iget-wide v2, p0, Lazg;->b:J

    iget-object v1, p0, Lazg;->c:Lcoj;

    .line 163
    invoke-static {}, Layj;->b()Layj;

    move-result-object v4

    .line 162
    invoke-static {v0, v2, v3, v1, v4}, Lazf;->a(Landroid/content/Context;JLcoj;Layl;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lazg;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
