.class public final enum Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

.field public static final enum b:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

.field public static final enum c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

.field private static final synthetic d:[Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;


# instance fields
.field private final mRecommendationType:Lcom/twitter/library/api/moments/maker/RecommendationType;

.field private final mTitleId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    const-string/jumbo v1, "MY_TWEETS"

    const v2, 0x7f0a0506

    sget-object v3, Lcom/twitter/library/api/moments/maker/RecommendationType;->a:Lcom/twitter/library/api/moments/maker/RecommendationType;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;-><init>(Ljava/lang/String;IILcom/twitter/library/api/moments/maker/RecommendationType;)V

    sput-object v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->a:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    .line 16
    new-instance v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    const-string/jumbo v1, "LIKES"

    const v2, 0x7f0a0504

    sget-object v3, Lcom/twitter/library/api/moments/maker/RecommendationType;->b:Lcom/twitter/library/api/moments/maker/RecommendationType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;-><init>(Ljava/lang/String;IILcom/twitter/library/api/moments/maker/RecommendationType;)V

    sput-object v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->b:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    .line 17
    new-instance v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    const-string/jumbo v1, "MAGIC"

    const v2, 0x7f0a0505

    sget-object v3, Lcom/twitter/library/api/moments/maker/RecommendationType;->c:Lcom/twitter/library/api/moments/maker/RecommendationType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;-><init>(Ljava/lang/String;IILcom/twitter/library/api/moments/maker/RecommendationType;)V

    sput-object v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    sget-object v1, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->a:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->b:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->d:[Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/twitter/library/api/moments/maker/RecommendationType;)V
    .locals 0
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/twitter/library/api/moments/maker/RecommendationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->mTitleId:I

    .line 24
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->mRecommendationType:Lcom/twitter/library/api/moments/maker/RecommendationType;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->d:[Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    invoke-virtual {v0}, [Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 32
    iget v0, p0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->mTitleId:I

    return v0
.end method

.method public b()Lcom/twitter/library/api/moments/maker/RecommendationType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->mRecommendationType:Lcom/twitter/library/api/moments/maker/RecommendationType;

    return-object v0
.end method
