.class public Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_tip:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    sget v0, Ltv/periscope/android/library/l;->broadcast_tip_text:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->a:Landroid/widget/TextView;

    .line 38
    sget v0, Ltv/periscope/android/library/l;->broadcast_tip_close:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->b:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public setCloseBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setCloseBtnVisibility(I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public setHtmlText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
