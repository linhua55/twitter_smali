.class public final enum Ltv/periscope/model/BroadcastState;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/periscope/model/BroadcastState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltv/periscope/model/BroadcastState;

.field public static final enum b:Ltv/periscope/model/BroadcastState;

.field public static final enum c:Ltv/periscope/model/BroadcastState;

.field public static final enum d:Ltv/periscope/model/BroadcastState;

.field public static final enum e:Ltv/periscope/model/BroadcastState;

.field private static final synthetic f:[Ltv/periscope/model/BroadcastState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Ltv/periscope/model/BroadcastState;

    const-string/jumbo v1, "NotStarted"

    invoke-direct {v0, v1, v2}, Ltv/periscope/model/BroadcastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/BroadcastState;->a:Ltv/periscope/model/BroadcastState;

    .line 5
    new-instance v0, Ltv/periscope/model/BroadcastState;

    const-string/jumbo v1, "Published"

    invoke-direct {v0, v1, v3}, Ltv/periscope/model/BroadcastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/BroadcastState;->b:Ltv/periscope/model/BroadcastState;

    .line 6
    new-instance v0, Ltv/periscope/model/BroadcastState;

    const-string/jumbo v1, "Running"

    invoke-direct {v0, v1, v4}, Ltv/periscope/model/BroadcastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/BroadcastState;->c:Ltv/periscope/model/BroadcastState;

    .line 7
    new-instance v0, Ltv/periscope/model/BroadcastState;

    const-string/jumbo v1, "TimedOut"

    invoke-direct {v0, v1, v5}, Ltv/periscope/model/BroadcastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/BroadcastState;->d:Ltv/periscope/model/BroadcastState;

    .line 8
    new-instance v0, Ltv/periscope/model/BroadcastState;

    const-string/jumbo v1, "Ended"

    invoke-direct {v0, v1, v6}, Ltv/periscope/model/BroadcastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/BroadcastState;->e:Ltv/periscope/model/BroadcastState;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Ltv/periscope/model/BroadcastState;

    sget-object v1, Ltv/periscope/model/BroadcastState;->a:Ltv/periscope/model/BroadcastState;

    aput-object v1, v0, v2

    sget-object v1, Ltv/periscope/model/BroadcastState;->b:Ltv/periscope/model/BroadcastState;

    aput-object v1, v0, v3

    sget-object v1, Ltv/periscope/model/BroadcastState;->c:Ltv/periscope/model/BroadcastState;

    aput-object v1, v0, v4

    sget-object v1, Ltv/periscope/model/BroadcastState;->d:Ltv/periscope/model/BroadcastState;

    aput-object v1, v0, v5

    sget-object v1, Ltv/periscope/model/BroadcastState;->e:Ltv/periscope/model/BroadcastState;

    aput-object v1, v0, v6

    sput-object v0, Ltv/periscope/model/BroadcastState;->f:[Ltv/periscope/model/BroadcastState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/periscope/model/BroadcastState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Ltv/periscope/model/BroadcastState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/periscope/model/BroadcastState;

    return-object v0
.end method

.method public static values()[Ltv/periscope/model/BroadcastState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Ltv/periscope/model/BroadcastState;->f:[Ltv/periscope/model/BroadcastState;

    invoke-virtual {v0}, [Ltv/periscope/model/BroadcastState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/periscope/model/BroadcastState;

    return-object v0
.end method
