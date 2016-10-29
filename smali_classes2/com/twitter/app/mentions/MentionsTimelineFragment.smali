.class public Lcom/twitter/app/mentions/MentionsTimelineFragment;
.super Lcom/twitter/android/TimelineFragment;
.source "Twttr"


# instance fields
.field private o:Lcom/twitter/android/util/ah;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/mentions/MentionsTimelineFragment;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->p:Z

    return v0
.end method


# virtual methods
.method public F()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x320

    return v0
.end method

.method protected a(JJ)V
    .locals 7

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TimelineFragment;->a(JJ)V

    .line 70
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->o:Lcom/twitter/android/util/ah;

    iget v2, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->K:I

    invoke-static {v2}, Lcom/twitter/android/util/ah;->a(I)I

    move-result v2

    .line 72
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 71
    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/android/util/ah;->a(IJ)V

    .line 73
    return-void
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->o:Lcom/twitter/android/util/ah;

    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->m:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/util/ah;->a(J)V

    .line 48
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Z)V

    .line 64
    iget-object v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->o:Lcom/twitter/android/util/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/util/ah;->a(Z)V

    .line 65
    return-void
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 1

    .prologue
    .line 84
    if-nez p2, :cond_0

    if-lez p3, :cond_0

    .line 85
    iget-object v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->o:Lcom/twitter/android/util/ah;

    invoke-virtual {v0}, Lcom/twitter/android/util/ah;->b()V

    .line 87
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/TimelineFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v0

    return v0
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->e()V

    .line 78
    iget-object v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->o:Lcom/twitter/android/util/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/util/ah;->a(Z)V

    .line 79
    return-void
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->u()Lcom/twitter/android/kg;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->u()Lcom/twitter/android/kg;

    move-result-object v0

    const-string/jumbo v1, "should_fetch_new_data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/kg;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->p:Z

    .line 32
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Lcom/twitter/android/util/ah;

    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->K:I

    .line 38
    invoke-static {v2}, Lcom/twitter/android/util/ah;->a(I)I

    move-result v2

    .line 39
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/android/util/ah;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/twitter/app/mentions/MentionsTimelineFragment;->o:Lcom/twitter/android/util/ah;

    .line 40
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->u()Lcom/twitter/android/kg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->u()Lcom/twitter/android/kg;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/twitter/android/kg;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/kg;->a(Landroid/os/Bundle;)Lcom/twitter/android/kg;

    move-result-object v0

    return-object v0
.end method

.method protected z()Lcom/twitter/app/common/list/b;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/twitter/app/mentions/a;

    invoke-direct {v0, p0}, Lcom/twitter/app/mentions/a;-><init>(Lcom/twitter/app/mentions/MentionsTimelineFragment;)V

    return-object v0
.end method
