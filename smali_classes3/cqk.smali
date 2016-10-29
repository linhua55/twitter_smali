.class public Lcqk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/twitter/model/moments/MomentGuideSectionType;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqq;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcqm;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-object v0, p1, Lcqm;->a:Ljava/lang/String;

    iput-object v0, p0, Lcqk;->a:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcqm;->b:Lcom/twitter/model/moments/MomentGuideSectionType;

    iput-object v0, p0, Lcqk;->b:Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 25
    iget-object v0, p1, Lcqm;->c:Lcom/twitter/util/collection/r;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcqk;->c:Ljava/util/List;

    .line 26
    iget-object v0, p1, Lcqm;->d:Ljava/lang/String;

    iput-object v0, p0, Lcqk;->d:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcqm;->e:Ljava/lang/String;

    iput-object v0, p0, Lcqk;->e:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcqm;->f:Ljava/lang/String;

    iput-object v0, p0, Lcqk;->f:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcqm;Lcql;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcqk;-><init>(Lcqm;)V

    return-void
.end method
