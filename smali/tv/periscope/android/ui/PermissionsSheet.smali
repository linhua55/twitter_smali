.class public Ltv/periscope/android/ui/PermissionsSheet;
.super Ltv/periscope/android/view/SheetImpl;
.source "Twttr"


# instance fields
.field private a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ltv/periscope/android/view/SheetImpl;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/PermissionsSheet;->a(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/SheetImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/PermissionsSheet;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/view/SheetImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/PermissionsSheet;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 32
    sget v0, Ltv/periscope/android/library/l;->sheet_inner:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/n;->ps__permissions:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    sget v0, Ltv/periscope/android/library/l;->content:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ltv/periscope/android/ui/PermissionsSheet;->a:Landroid/view/ViewGroup;

    .line 36
    return-void
.end method


# virtual methods
.method public setContent(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsSheet;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsSheet;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/PermissionsSheet;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    return-void
.end method
