.class public final enum Lcom/twitter/android/util/AppEventTrack$EventType;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/android/util/AppEventTrack$EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/android/util/AppEventTrack$EventType;

.field public static final enum b:Lcom/twitter/android/util/AppEventTrack$EventType;

.field public static final enum c:Lcom/twitter/android/util/AppEventTrack$EventType;

.field public static final enum d:Lcom/twitter/android/util/AppEventTrack$EventType;

.field public static final enum e:Lcom/twitter/android/util/AppEventTrack$EventType;

.field public static final enum f:Lcom/twitter/android/util/AppEventTrack$EventType;

.field public static final enum g:Lcom/twitter/android/util/AppEventTrack$EventType;

.field private static final synthetic h:[Lcom/twitter/android/util/AppEventTrack$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    const-string/jumbo v1, "Install"

    invoke-direct {v0, v1, v3}, Lcom/twitter/android/util/AppEventTrack$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->a:Lcom/twitter/android/util/AppEventTrack$EventType;

    .line 117
    new-instance v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    const-string/jumbo v1, "Open"

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/util/AppEventTrack$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->b:Lcom/twitter/android/util/AppEventTrack$EventType;

    .line 118
    new-instance v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    const-string/jumbo v1, "Login"

    invoke-direct {v0, v1, v5}, Lcom/twitter/android/util/AppEventTrack$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->c:Lcom/twitter/android/util/AppEventTrack$EventType;

    .line 119
    new-instance v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    const-string/jumbo v1, "Signup"

    invoke-direct {v0, v1, v6}, Lcom/twitter/android/util/AppEventTrack$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->d:Lcom/twitter/android/util/AppEventTrack$EventType;

    .line 120
    new-instance v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    const-string/jumbo v1, "Update"

    invoke-direct {v0, v1, v7}, Lcom/twitter/android/util/AppEventTrack$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->e:Lcom/twitter/android/util/AppEventTrack$EventType;

    .line 121
    new-instance v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    const-string/jumbo v1, "NonReferredOpen"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/util/AppEventTrack$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->f:Lcom/twitter/android/util/AppEventTrack$EventType;

    .line 122
    new-instance v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    const-string/jumbo v1, "NonReferredInstall"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/util/AppEventTrack$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->g:Lcom/twitter/android/util/AppEventTrack$EventType;

    .line 115
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/twitter/android/util/AppEventTrack$EventType;

    sget-object v1, Lcom/twitter/android/util/AppEventTrack$EventType;->a:Lcom/twitter/android/util/AppEventTrack$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/util/AppEventTrack$EventType;->b:Lcom/twitter/android/util/AppEventTrack$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/util/AppEventTrack$EventType;->c:Lcom/twitter/android/util/AppEventTrack$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/android/util/AppEventTrack$EventType;->d:Lcom/twitter/android/util/AppEventTrack$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twitter/android/util/AppEventTrack$EventType;->e:Lcom/twitter/android/util/AppEventTrack$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/twitter/android/util/AppEventTrack$EventType;->f:Lcom/twitter/android/util/AppEventTrack$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twitter/android/util/AppEventTrack$EventType;->g:Lcom/twitter/android/util/AppEventTrack$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->h:[Lcom/twitter/android/util/AppEventTrack$EventType;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/util/AppEventTrack$EventType;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/AppEventTrack$EventType;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/util/AppEventTrack$EventType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->h:[Lcom/twitter/android/util/AppEventTrack$EventType;

    invoke-virtual {v0}, [Lcom/twitter/android/util/AppEventTrack$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/util/AppEventTrack$EventType;

    return-object v0
.end method
