.class public final enum Ltv/periscope/android/data/UserType;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/periscope/android/data/UserType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltv/periscope/android/data/UserType;

.field public static final enum b:Ltv/periscope/android/data/UserType;

.field public static final enum c:Ltv/periscope/android/data/UserType;

.field public static final enum d:Ltv/periscope/android/data/UserType;

.field public static final enum e:Ltv/periscope/android/data/UserType;

.field public static final enum f:Ltv/periscope/android/data/UserType;

.field public static final enum g:Ltv/periscope/android/data/UserType;

.field public static final enum h:Ltv/periscope/android/data/UserType;

.field public static final enum i:Ltv/periscope/android/data/UserType;

.field public static final enum j:Ltv/periscope/android/data/UserType;

.field public static final enum k:Ltv/periscope/android/data/UserType;

.field public static final enum l:Ltv/periscope/android/data/UserType;

.field public static final enum m:Ltv/periscope/android/data/UserType;

.field private static final synthetic n:[Ltv/periscope/android/data/UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "Followers"

    invoke-direct {v0, v1, v3}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->a:Ltv/periscope/android/data/UserType;

    .line 5
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "Following"

    invoke-direct {v0, v1, v4}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->b:Ltv/periscope/android/data/UserType;

    .line 6
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "MutualFollow"

    invoke-direct {v0, v1, v5}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->c:Ltv/periscope/android/data/UserType;

    .line 7
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "Blocked"

    invoke-direct {v0, v1, v6}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->d:Ltv/periscope/android/data/UserType;

    .line 8
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "SuggestedTwitter"

    invoke-direct {v0, v1, v7}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->e:Ltv/periscope/android/data/UserType;

    .line 9
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "SuggestedFeatured"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->f:Ltv/periscope/android/data/UserType;

    .line 10
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "SuggestedHearts"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->g:Ltv/periscope/android/data/UserType;

    .line 11
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "SuggestedPopular"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->h:Ltv/periscope/android/data/UserType;

    .line 12
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "SuggestedDigits"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->i:Ltv/periscope/android/data/UserType;

    .line 13
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "DigitsSyncCta"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->j:Ltv/periscope/android/data/UserType;

    .line 14
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "SearchResults"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->k:Ltv/periscope/android/data/UserType;

    .line 15
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "Live"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->l:Ltv/periscope/android/data/UserType;

    .line 16
    new-instance v0, Ltv/periscope/android/data/UserType;

    const-string/jumbo v1, "Replay"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/periscope/android/data/UserType;->m:Ltv/periscope/android/data/UserType;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Ltv/periscope/android/data/UserType;

    sget-object v1, Ltv/periscope/android/data/UserType;->a:Ltv/periscope/android/data/UserType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/periscope/android/data/UserType;->b:Ltv/periscope/android/data/UserType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/periscope/android/data/UserType;->c:Ltv/periscope/android/data/UserType;

    aput-object v1, v0, v5

    sget-object v1, Ltv/periscope/android/data/UserType;->d:Ltv/periscope/android/data/UserType;

    aput-object v1, v0, v6

    sget-object v1, Ltv/periscope/android/data/UserType;->e:Ltv/periscope/android/data/UserType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ltv/periscope/android/data/UserType;->f:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ltv/periscope/android/data/UserType;->g:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ltv/periscope/android/data/UserType;->h:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ltv/periscope/android/data/UserType;->i:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ltv/periscope/android/data/UserType;->j:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ltv/periscope/android/data/UserType;->k:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ltv/periscope/android/data/UserType;->l:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ltv/periscope/android/data/UserType;->m:Ltv/periscope/android/data/UserType;

    aput-object v2, v0, v1

    sput-object v0, Ltv/periscope/android/data/UserType;->n:[Ltv/periscope/android/data/UserType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/periscope/android/data/UserType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Ltv/periscope/android/data/UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/data/UserType;

    return-object v0
.end method

.method public static values()[Ltv/periscope/android/data/UserType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Ltv/periscope/android/data/UserType;->n:[Ltv/periscope/android/data/UserType;

    invoke-virtual {v0}, [Ltv/periscope/android/data/UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/periscope/android/data/UserType;

    return-object v0
.end method
