.class public final Lcom/twitter/library/api/moments/maker/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lcom/twitter/library/api/moments/maker/o;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/b;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/g;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/h;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/t;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/upload/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/twitter/library/api/moments/maker/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/library/api/moments/maker/q;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/b;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/g;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/h;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/t;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/upload/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/q;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/q;->b:Lden;

    .line 57
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/q;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_1
    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/q;->c:Lden;

    .line 59
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/q;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_2
    iput-object p3, p0, Lcom/twitter/library/api/moments/maker/q;->d:Lden;

    .line 61
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/q;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_3
    iput-object p4, p0, Lcom/twitter/library/api/moments/maker/q;->e:Lden;

    .line 63
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/q;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_4
    iput-object p5, p0, Lcom/twitter/library/api/moments/maker/q;->f:Lden;

    .line 65
    return-void
.end method

.method public static a(Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/b;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/g;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/h;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/t;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/upload/s;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/library/api/moments/maker/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/twitter/library/api/moments/maker/q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/moments/maker/q;-><init>(Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/api/moments/maker/o;
    .locals 6

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/library/api/moments/maker/o;

    iget-object v1, p0, Lcom/twitter/library/api/moments/maker/q;->b:Lden;

    .line 70
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/api/moments/maker/e;

    iget-object v2, p0, Lcom/twitter/library/api/moments/maker/q;->c:Lden;

    .line 71
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/api/moments/maker/e;

    iget-object v3, p0, Lcom/twitter/library/api/moments/maker/q;->d:Lden;

    .line 72
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/api/moments/maker/e;

    iget-object v4, p0, Lcom/twitter/library/api/moments/maker/q;->e:Lden;

    .line 73
    invoke-interface {v4}, Lden;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/api/moments/maker/e;

    iget-object v5, p0, Lcom/twitter/library/api/moments/maker/q;->f:Lden;

    .line 74
    invoke-interface {v5}, Lden;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/library/api/upload/s;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/moments/maker/o;-><init>(Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/upload/s;)V

    .line 69
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/library/api/moments/maker/q;->a()Lcom/twitter/library/api/moments/maker/o;

    move-result-object v0

    return-object v0
.end method
