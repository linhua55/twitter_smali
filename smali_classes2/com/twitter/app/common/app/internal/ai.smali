.class public final Lcom/twitter/app/common/app/internal/ai;
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
        "Lcom/twitter/library/client/Session;",
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
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/bk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/twitter/app/common/app/internal/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/app/internal/ai;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/bk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-boolean v0, Lcom/twitter/app/common/app/internal/ai;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/twitter/app/common/app/internal/ai;->b:Lden;

    .line 25
    sget-boolean v0, Lcom/twitter/app/common/app/internal/ai;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_1
    iput-object p2, p0, Lcom/twitter/app/common/app/internal/ai;->c:Lden;

    .line 27
    return-void
.end method

.method public static a(Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/bk;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/twitter/app/common/app/internal/ai;

    invoke-direct {v0, p0, p1}, Lcom/twitter/app/common/app/internal/ai;-><init>(Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/client/Session;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/app/common/app/internal/ai;->b:Lden;

    .line 33
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/UserIdentifier;

    iget-object v1, p0, Lcom/twitter/app/common/app/internal/ai;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/bk;

    .line 32
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/ah;->a(Lcom/twitter/app/common/account/UserIdentifier;Lcom/twitter/library/client/bk;)Lcom/twitter/library/client/Session;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/app/common/app/internal/ai;->a()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method
