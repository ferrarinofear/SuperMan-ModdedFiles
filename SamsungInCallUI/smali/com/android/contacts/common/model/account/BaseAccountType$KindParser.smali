.class Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindParser"
.end annotation


# static fields
.field public static final a:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/a/b/v;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->b:Ljava/util/Map;

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method private a(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    const-string v0, "kind"

    invoke-static {p3, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined data kind \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
