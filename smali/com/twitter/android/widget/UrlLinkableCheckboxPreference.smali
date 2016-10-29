.class public Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "Twttr"


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v1, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->a:I

    .line 37
    sget-object v0, Lcom/twitter/android/mu;->UrlLinkableCheckboxPreference:[I

    .line 38
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->a:I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v1, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->a:I

    .line 29
    sget-object v0, Lcom/twitter/android/mu;->UrlLinkableCheckboxPreference:[I

    .line 30
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->a:I

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->b:Landroid/view/View;

    iget v2, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->a:I

    invoke-static {v0, v1, v2}, Lcom/twitter/android/widget/gc;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/android/widget/gc;->a(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 46
    iput-object p1, p0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->b:Landroid/view/View;

    .line 47
    invoke-direct {p0}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->a()V

    .line 48
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->isEnabled()Z

    move-result v0

    .line 53
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->a()V

    .line 57
    :cond_0
    return-void
.end method
