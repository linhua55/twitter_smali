.class final enum Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

.field public static final enum b:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

.field public static final enum c:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

.field public static final enum d:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

.field private static final synthetic e:[Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;


# instance fields
.field public final shouldBeConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    const-string/jumbo v1, "SHOULD_BE_CONNECTED"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->a:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    .line 789
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    const-string/jumbo v1, "NO_SUBSCRIPTION"

    invoke-direct {v0, v1, v3, v2}, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->b:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    .line 793
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    const-string/jumbo v1, "OPERATION_FAILURE"

    invoke-direct {v0, v1, v4, v2}, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->c:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    .line 797
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    const-string/jumbo v1, "SESSION_TERMINATION_REQUESTED"

    invoke-direct {v0, v1, v5, v2}, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->d:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    .line 781
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->a:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->b:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->c:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->d:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->e:[Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 803
    iput-boolean p3, p0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->shouldBeConnected:Z

    .line 804
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;
    .locals 1

    .prologue
    .line 781
    const-class v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    return-object v0
.end method

.method public static values()[Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;
    .locals 1

    .prologue
    .line 781
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->e:[Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    invoke-virtual {v0}, [Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    return-object v0
.end method
