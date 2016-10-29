.class public Ltv/periscope/android/ui/broadcast/j;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/y;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 372
    sget v0, Ltv/periscope/android/library/l;->divider_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/j;->b:Landroid/widget/TextView;

    .line 373
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/j;
    .locals 3

    .prologue
    .line 363
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__list_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 365
    new-instance v1, Ltv/periscope/android/ui/broadcast/j;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/j;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 360
    check-cast p1, Ltv/periscope/android/ui/broadcast/y;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/j;->a(Ltv/periscope/android/ui/broadcast/y;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/y;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/j;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    return-void
.end method
