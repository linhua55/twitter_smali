.class public Lza;
.super Lym;
.source "Twttr"


# instance fields
.field private final b:Lcom/twitter/library/media/widget/UserImageView;

.field private final c:Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lym;-><init>(Landroid/view/View;Z)V

    .line 161
    iget-object v0, p0, Lza;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1302fb

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lza;->b:Lcom/twitter/library/media/widget/UserImageView;

    .line 163
    iget-object v0, p0, Lza;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1302ef

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    iput-object v0, p0, Lza;->c:Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    .line 164
    return-void
.end method

.method static synthetic a(Lza;)Lcom/twitter/library/media/widget/UserImageView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lza;->b:Lcom/twitter/library/media/widget/UserImageView;

    return-object v0
.end method

.method static synthetic b(Lza;)Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lza;->c:Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    return-object v0
.end method
