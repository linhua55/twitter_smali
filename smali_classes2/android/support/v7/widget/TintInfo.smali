.class Landroid/support/v7/widget/TintInfo;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public mHasTintList:Z

.field public mHasTintMode:Z

.field public mTintList:Landroid/content/res/ColorStateList;

.field public mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    iput-object v1, p0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 30
    iput-boolean v0, p0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 31
    iput-object v1, p0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 32
    iput-boolean v0, p0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 33
    return-void
.end method
