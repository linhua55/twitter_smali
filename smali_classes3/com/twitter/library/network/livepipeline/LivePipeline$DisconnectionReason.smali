.class final enum Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

.field public static final enum b:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

.field public static final enum c:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

.field public static final enum d:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

.field public static final enum e:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

.field private static final synthetic f:[Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 758
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    const-string/jumbo v1, "SERVER_TERMINATED"

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->a:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 762
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    const-string/jumbo v1, "NO_HEARTBEAT"

    invoke-direct {v0, v1, v3}, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->b:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 766
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    const-string/jumbo v1, "LOGOUT"

    invoke-direct {v0, v1, v4}, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->c:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 771
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    const-string/jumbo v1, "NOT_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->d:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 775
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    const-string/jumbo v1, "INVALID_STREAM"

    invoke-direct {v0, v1, v6}, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->e:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 753
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->a:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->b:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->c:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->d:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->e:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->f:[Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 753
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;
    .locals 1

    .prologue
    .line 753
    const-class v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    return-object v0
.end method

.method public static values()[Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->f:[Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    invoke-virtual {v0}, [Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    return-object v0
.end method
