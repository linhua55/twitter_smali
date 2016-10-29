.class public final enum Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

.field public static final enum b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

.field private static final synthetic c:[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    new-instance v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    const-string/jumbo v1, "Live"

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    .line 168
    new-instance v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    const-string/jumbo v1, "Replay"

    invoke-direct {v0, v1, v3}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    aput-object v1, v0, v3

    sput-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->c:[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;
    .locals 1

    .prologue
    .line 166
    const-class v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    return-object v0
.end method

.method public static values()[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->c:[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    invoke-virtual {v0}, [Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    return-object v0
.end method
