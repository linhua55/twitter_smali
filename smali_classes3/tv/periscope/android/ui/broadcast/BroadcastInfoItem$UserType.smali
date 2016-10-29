.class public final enum Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

.field public static final enum b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

.field private static final synthetic c:[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    new-instance v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    const-string/jumbo v1, "Owner"

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    .line 266
    new-instance v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    const-string/jumbo v1, "Viewer"

    invoke-direct {v0, v1, v3}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    .line 264
    const/4 v0, 0x2

    new-array v0, v0, [Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    aput-object v1, v0, v3

    sput-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->c:[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

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
    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;
    .locals 1

    .prologue
    .line 264
    const-class v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    return-object v0
.end method

.method public static values()[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->c:[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    invoke-virtual {v0}, [Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    return-object v0
.end method
