.class public Ltv/periscope/android/ui/broadcast/i;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ltv/periscope/android/view/PsPillTextView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 162
    sget v0, Ltv/periscope/android/library/l;->featured_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsPillTextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/i;->b:Ltv/periscope/android/view/PsPillTextView;

    .line 163
    sget v0, Ltv/periscope/android/library/l;->featured_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/i;->c:Landroid/widget/TextView;

    .line 164
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/i;
    .locals 3

    .prologue
    .line 152
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__featured_summary_contianer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    new-instance v1, Ltv/periscope/android/ui/broadcast/i;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/i;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Ltv/periscope/android/ui/broadcast/w;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/i;->a(Ltv/periscope/android/ui/broadcast/w;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/w;)V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/w;->b()Ltv/periscope/android/ui/broadcast/x;

    move-result-object v0

    .line 169
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/i;->b:Ltv/periscope/android/view/PsPillTextView;

    iget v2, v0, Ltv/periscope/android/ui/broadcast/x;->c:I

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/PsPillTextView;->setPillColor(I)V

    .line 170
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/i;->b:Ltv/periscope/android/view/PsPillTextView;

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/PsPillTextView;->setPillText(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/i;->c:Landroid/widget/TextView;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method
