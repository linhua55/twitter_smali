.class public enum Ltv/periscope/model/AbuseType;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/periscope/model/AbuseType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltv/periscope/model/AbuseType;

.field public static final enum b:Ltv/periscope/model/AbuseType;

.field public static final enum c:Ltv/periscope/model/AbuseType;

.field public static final enum d:Ltv/periscope/model/AbuseType;

.field private static final synthetic e:[Ltv/periscope/model/AbuseType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Ltv/periscope/model/AbuseType$1;

    const-string/jumbo v1, "SelfHarm"

    invoke-direct {v0, v1, v2}, Ltv/periscope/model/AbuseType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/AbuseType;->a:Ltv/periscope/model/AbuseType;

    .line 11
    new-instance v0, Ltv/periscope/model/AbuseType$2;

    const-string/jumbo v1, "Violence"

    invoke-direct {v0, v1, v3}, Ltv/periscope/model/AbuseType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/AbuseType;->b:Ltv/periscope/model/AbuseType;

    .line 17
    new-instance v0, Ltv/periscope/model/AbuseType$3;

    const-string/jumbo v1, "SexualContent"

    invoke-direct {v0, v1, v4}, Ltv/periscope/model/AbuseType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/AbuseType;->c:Ltv/periscope/model/AbuseType;

    .line 23
    new-instance v0, Ltv/periscope/model/AbuseType$4;

    const-string/jumbo v1, "Other"

    invoke-direct {v0, v1, v5}, Ltv/periscope/model/AbuseType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/model/AbuseType;->d:Ltv/periscope/model/AbuseType;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Ltv/periscope/model/AbuseType;

    sget-object v1, Ltv/periscope/model/AbuseType;->a:Ltv/periscope/model/AbuseType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/periscope/model/AbuseType;->b:Ltv/periscope/model/AbuseType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/periscope/model/AbuseType;->c:Ltv/periscope/model/AbuseType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/periscope/model/AbuseType;->d:Ltv/periscope/model/AbuseType;

    aput-object v1, v0, v5

    sput-object v0, Ltv/periscope/model/AbuseType;->e:[Ltv/periscope/model/AbuseType;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILtv/periscope/model/AbuseType$1;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ltv/periscope/model/AbuseType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/periscope/model/AbuseType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Ltv/periscope/model/AbuseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/periscope/model/AbuseType;

    return-object v0
.end method

.method public static values()[Ltv/periscope/model/AbuseType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Ltv/periscope/model/AbuseType;->e:[Ltv/periscope/model/AbuseType;

    invoke-virtual {v0}, [Ltv/periscope/model/AbuseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/periscope/model/AbuseType;

    return-object v0
.end method
